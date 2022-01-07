
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; int port_state; int fc_plogi_cnt; scalar_t__ num_disc_nodes; } ;


 int FC_NLP_MORE ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int lpfc_els_disc_plogi (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,int ,int,int ) ;

void
lpfc_more_plogi(struct lpfc_vport *vport)
{
 int sentplogi;

 if (vport->num_disc_nodes)
  vport->num_disc_nodes--;


 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0232 Continue discovery with %d PLOGIs to go "
    "Data: x%x x%x x%x\n",
    vport->num_disc_nodes, vport->fc_plogi_cnt,
    vport->fc_flag, vport->port_state);

 if (vport->fc_flag & FC_NLP_MORE)

  sentplogi = lpfc_els_disc_plogi(vport);

 return;
}
