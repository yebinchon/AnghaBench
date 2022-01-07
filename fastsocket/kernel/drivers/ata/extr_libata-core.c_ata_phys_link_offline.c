
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int SCR_STATUS ;
 int ata_sstatus_online (int ) ;
 scalar_t__ sata_scr_read (struct ata_link*,int ,int *) ;

bool ata_phys_link_offline(struct ata_link *link)
{
 u32 sstatus;

 if (sata_scr_read(link, SCR_STATUS, &sstatus) == 0 &&
     !ata_sstatus_online(sstatus))
  return 1;
 return 0;
}
