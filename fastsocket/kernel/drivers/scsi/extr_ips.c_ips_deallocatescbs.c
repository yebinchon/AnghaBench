
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ips_scb_t ;
struct TYPE_7__ {TYPE_3__* scbs; int pcidev; } ;
typedef TYPE_2__ ips_ha_t ;
struct TYPE_6__ {TYPE_3__* list; } ;
struct TYPE_8__ {int scb_busaddr; int sg_busaddr; TYPE_1__ sg_list; } ;


 int IPS_MAX_SG ;
 int IPS_SGLIST_SIZE (TYPE_2__*) ;
 int pci_free_consistent (int ,int,TYPE_3__*,int ) ;

__attribute__((used)) static int
ips_deallocatescbs(ips_ha_t * ha, int cmds)
{
 if (ha->scbs) {
  pci_free_consistent(ha->pcidev,
        IPS_SGLIST_SIZE(ha) * IPS_MAX_SG * cmds,
        ha->scbs->sg_list.list,
        ha->scbs->sg_busaddr);
  pci_free_consistent(ha->pcidev, sizeof (ips_scb_t) * cmds,
        ha->scbs, ha->scbs->scb_busaddr);
  ha->scbs = ((void*)0);
 }
 return 1;
}
