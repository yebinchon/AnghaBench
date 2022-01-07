
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * scsi_cmd; } ;
typedef TYPE_1__ ips_scb_t ;
struct TYPE_8__ {int pcidev; } ;
typedef TYPE_2__ ips_ha_t ;


 int IPS_PRINTK (int ,int ,char*) ;
 int KERN_WARNING ;
 int METHOD_TRACE (char*,int) ;
 int ips_done (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
ipsintr_done(ips_ha_t * ha, ips_scb_t * scb)
{
 METHOD_TRACE("ipsintr_done", 2);

 if (!scb) {
  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Spurious interrupt; scb NULL.\n");

  return;
 }

 if (scb->scsi_cmd == ((void*)0)) {

  IPS_PRINTK(KERN_WARNING, ha->pcidev,
      "Spurious interrupt; scsi_cmd not set.\n");

  return;
 }

 ips_done(ha, scb);
}
