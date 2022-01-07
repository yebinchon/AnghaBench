
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; scalar_t__ num_disc_nodes; int port_state; int fc_adisc_cnt; } ;


 int FC_NLP_MORE ;
 int KERN_INFO ;
 int LOG_DISCOVERY ;
 int lpfc_adisc_done (struct lpfc_vport*) ;
 int lpfc_els_disc_adisc (struct lpfc_vport*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,int ,int,int ) ;
 int lpfc_set_disctmo (struct lpfc_vport*) ;

void
lpfc_more_adisc(struct lpfc_vport *vport)
{
 int sentadisc;

 if (vport->num_disc_nodes)
  vport->num_disc_nodes--;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_DISCOVERY,
    "0210 Continue discovery with %d ADISCs to go "
    "Data: x%x x%x x%x\n",
    vport->num_disc_nodes, vport->fc_adisc_cnt,
    vport->fc_flag, vport->port_state);

 if (vport->fc_flag & FC_NLP_MORE) {
  lpfc_set_disctmo(vport);

  sentadisc = lpfc_els_disc_adisc(vport);
 }
 if (!vport->num_disc_nodes)
  lpfc_adisc_done(vport);
 return;
}
