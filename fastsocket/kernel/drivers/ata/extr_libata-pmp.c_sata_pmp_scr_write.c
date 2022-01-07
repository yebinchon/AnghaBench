
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int KERN_WARNING ;
 int SATA_PMP_PSCR_CONTROL ;
 int ata_link_printk (struct ata_link*,int ,char*,int,unsigned int) ;
 unsigned int sata_pmp_write (struct ata_link*,int,int ) ;

int sata_pmp_scr_write(struct ata_link *link, int reg, u32 val)
{
 unsigned int err_mask;

 if (reg > SATA_PMP_PSCR_CONTROL)
  return -EINVAL;

 err_mask = sata_pmp_write(link, reg, val);
 if (err_mask) {
  ata_link_printk(link, KERN_WARNING, "failed to write SCR %d "
    "(Emask=0x%x)\n", reg, err_mask);
  return -EIO;
 }
 return 0;
}
