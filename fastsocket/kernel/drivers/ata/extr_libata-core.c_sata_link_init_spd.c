
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_link {int saved_scontrol; int hw_sata_spd_limit; int sata_spd_limit; } ;


 int SCR_CONTROL ;
 int ata_force_link_limits (struct ata_link*) ;
 int sata_scr_read (struct ata_link*,int ,int*) ;

int sata_link_init_spd(struct ata_link *link)
{
 u8 spd;
 int rc;

 rc = sata_scr_read(link, SCR_CONTROL, &link->saved_scontrol);
 if (rc)
  return rc;

 spd = (link->saved_scontrol >> 4) & 0xf;
 if (spd)
  link->hw_sata_spd_limit &= (1 << spd) - 1;

 ata_force_link_limits(link);

 link->sata_spd_limit = link->hw_sata_spd_limit;

 return 0;
}
