
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct ata_device* device; } ;
struct ata_port {int nr_pmp_links; TYPE_1__* pmp_link; TYPE_2__ link; } ;
struct ata_device {int dummy; } ;
struct TYPE_3__ {struct ata_device* device; } ;


 int ata_link_max_devices (TYPE_2__*) ;
 scalar_t__ likely (int) ;
 int sata_pmp_attached (struct ata_port*) ;

__attribute__((used)) static struct ata_device *ata_find_dev(struct ata_port *ap, int devno)
{
 if (!sata_pmp_attached(ap)) {
  if (likely(devno < ata_link_max_devices(&ap->link)))
   return &ap->link.device[devno];
 } else {
  if (likely(devno < ap->nr_pmp_links))
   return &ap->pmp_link[devno].device[0];
 }

 return ((void*)0);
}
