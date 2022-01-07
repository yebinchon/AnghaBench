
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_nodelist {int nlp_DID; int vport; int nlp_type; int nlp_flag; struct fc_rport* rport; } ;
struct fc_rport {int dummy; } ;


 int KERN_INFO ;
 int LOG_NODE ;
 int LPFC_DISC_TRC_RPORT ;
 int fc_remote_port_delete (struct fc_rport*) ;
 int lpfc_debugfs_disc_trc (int ,int ,char*,int ,int ,int ) ;
 int lpfc_printf_vlog (int ,int ,int ,char*,int ,struct fc_rport*) ;

__attribute__((used)) static void
lpfc_unregister_remote_port(struct lpfc_nodelist *ndlp)
{
 struct fc_rport *rport = ndlp->rport;

 lpfc_debugfs_disc_trc(ndlp->vport, LPFC_DISC_TRC_RPORT,
  "rport delete:    did:x%x flg:x%x type x%x",
  ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_type);

 lpfc_printf_vlog(ndlp->vport, KERN_INFO, LOG_NODE,
    "3184 rport unregister x%06x, rport %p\n",
    ndlp->nlp_DID, rport);

 fc_remote_port_delete(rport);

 return;
}
