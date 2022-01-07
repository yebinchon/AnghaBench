
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ port_state; } ;
struct fc_vport {scalar_t__ dd_data; } ;


 scalar_t__ LPFC_VPORT_READY ;
 int SLI_CTNS_RSPN_ID ;
 int lpfc_ns_cmd (struct lpfc_vport*,int ,int ,int ) ;

__attribute__((used)) static void
lpfc_set_vport_symbolic_name(struct fc_vport *fc_vport)
{
 struct lpfc_vport *vport = *(struct lpfc_vport **)fc_vport->dd_data;

 if (vport->port_state == LPFC_VPORT_READY)
  lpfc_ns_cmd(vport, SLI_CTNS_RSPN_ID, 0, 0);
}
