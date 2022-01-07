
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct ata_port {int flags; TYPE_2__ link; } ;
struct TYPE_3__ {int * gscr; } ;


 int ATA_FLAG_NCQ ;
 int KERN_INFO ;
 int ata_port_printk (struct ata_port*,int ,char*) ;
 int sata_pmp_gscr_devid (int *) ;
 int sata_pmp_gscr_vendor (int *) ;
 int sil24_config_pmp (struct ata_port*,int) ;
 int sil24_init_port (struct ata_port*) ;

__attribute__((used)) static void sil24_pmp_attach(struct ata_port *ap)
{
 u32 *gscr = ap->link.device->gscr;

 sil24_config_pmp(ap, 1);
 sil24_init_port(ap);

 if (sata_pmp_gscr_vendor(gscr) == 0x11ab &&
     sata_pmp_gscr_devid(gscr) == 0x4140) {
  ata_port_printk(ap, KERN_INFO,
   "disabling NCQ support due to sil24-mv4140 quirk\n");
  ap->flags &= ~ATA_FLAG_NCQ;
 }
}
