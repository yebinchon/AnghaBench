
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int fc_fdmitmo; } ;
struct lpfc_nodelist {int dummy; } ;
struct TYPE_2__ {char* nodename; } ;


 int FDMI_DID ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int SLI_MGMT_DHBA ;
 TYPE_1__* init_utsname () ;
 scalar_t__ jiffies ;
 int lpfc_fdmi_cmd (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

void
lpfc_fdmi_timeout_handler(struct lpfc_vport *vport)
{
 struct lpfc_nodelist *ndlp;

 ndlp = lpfc_findnode_did(vport, FDMI_DID);
 if (ndlp && NLP_CHK_NODE_ACT(ndlp)) {
  if (init_utsname()->nodename[0] != '\0')
   lpfc_fdmi_cmd(vport, ndlp, SLI_MGMT_DHBA);
  else
   mod_timer(&vport->fc_fdmitmo, jiffies +
      msecs_to_jiffies(1000 * 60));
 }
 return;
}
