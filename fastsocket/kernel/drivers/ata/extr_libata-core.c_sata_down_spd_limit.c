
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int sata_spd; int sata_spd_limit; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int KERN_WARNING ;
 int SCR_STATUS ;
 int ata_link_printk (struct ata_link*,int ,char*,int ) ;
 scalar_t__ ata_sstatus_online (int) ;
 int ffs (int) ;
 int fls (int) ;
 int sata_scr_read (struct ata_link*,int ,int*) ;
 int sata_scr_valid (struct ata_link*) ;
 int sata_spd_string (int) ;

int sata_down_spd_limit(struct ata_link *link, u32 spd_limit)
{
 u32 sstatus, spd, mask;
 int rc, bit;

 if (!sata_scr_valid(link))
  return -EOPNOTSUPP;




 rc = sata_scr_read(link, SCR_STATUS, &sstatus);
 if (rc == 0 && ata_sstatus_online(sstatus))
  spd = (sstatus >> 4) & 0xf;
 else
  spd = link->sata_spd;

 mask = link->sata_spd_limit;
 if (mask <= 1)
  return -EINVAL;


 bit = fls(mask) - 1;
 mask &= ~(1 << bit);




 if (spd > 1)
  mask &= (1 << (spd - 1)) - 1;
 else
  mask &= 1;


 if (!mask)
  return -EINVAL;

 if (spd_limit) {
  if (mask & ((1 << spd_limit) - 1))
   mask &= (1 << spd_limit) - 1;
  else {
   bit = ffs(mask) - 1;
   mask = 1 << bit;
  }
 }

 link->sata_spd_limit = mask;

 ata_link_printk(link, KERN_WARNING, "limiting SATA link speed to %s\n",
   sata_spd_string(fls(mask)));

 return 0;
}
