
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* wwn; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_4__ portName; TYPE_4__ nodeName; } ;
struct lpfc_vport {TYPE_4__ fc_portname; TYPE_3__ fc_sparam; TYPE_2__* phba; TYPE_4__ fc_nodename; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_7__ {scalar_t__ cfg_soft_wwpn; scalar_t__ cfg_soft_wwnn; } ;


 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 int u64_to_wwn (scalar_t__,scalar_t__*) ;

void
lpfc_update_vport_wwn(struct lpfc_vport *vport)
{

 if (vport->phba->cfg_soft_wwnn)
  u64_to_wwn(vport->phba->cfg_soft_wwnn,
      vport->fc_sparam.nodeName.u.wwn);
 if (vport->phba->cfg_soft_wwpn)
  u64_to_wwn(vport->phba->cfg_soft_wwpn,
      vport->fc_sparam.portName.u.wwn);





 if (vport->fc_nodename.u.wwn[0] == 0 || vport->phba->cfg_soft_wwnn)
  memcpy(&vport->fc_nodename, &vport->fc_sparam.nodeName,
   sizeof(struct lpfc_name));
 else
  memcpy(&vport->fc_sparam.nodeName, &vport->fc_nodename,
   sizeof(struct lpfc_name));

 if (vport->fc_portname.u.wwn[0] == 0 || vport->phba->cfg_soft_wwpn)
  memcpy(&vport->fc_portname, &vport->fc_sparam.portName,
   sizeof(struct lpfc_name));
 else
  memcpy(&vport->fc_sparam.portName, &vport->fc_portname,
   sizeof(struct lpfc_name));
}
