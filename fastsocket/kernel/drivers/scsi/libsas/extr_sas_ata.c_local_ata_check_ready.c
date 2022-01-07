
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_internal {TYPE_1__* dft; } ;
struct domain_device {int dummy; } ;
struct ata_port {struct domain_device* private_data; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int (* lldd_ata_check_ready ) (struct domain_device*) ;} ;


 struct sas_internal* dev_to_sas_internal (struct domain_device*) ;
 int stub1 (struct domain_device*) ;

__attribute__((used)) static int local_ata_check_ready(struct ata_link *link)
{
 struct ata_port *ap = link->ap;
 struct domain_device *dev = ap->private_data;
 struct sas_internal *i = dev_to_sas_internal(dev);

 if (i->dft->lldd_ata_check_ready)
  return i->dft->lldd_ata_check_ready(dev);
 else {




  return 1;
 }
}
