
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nodelist {int nlp_DID; int nlp_rpi; int nlp_listp; } ;
struct TYPE_2__ {scalar_t__ sli_rev; } ;


 int INIT_LIST_HEAD (int *) ;
 int LPFC_DISC_TRC_NODE ;
 scalar_t__ LPFC_SLI_REV4 ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_initialize_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_sli4_alloc_rpi (TYPE_1__*) ;
 int memset (struct lpfc_nodelist*,int ,int) ;

void
lpfc_nlp_init(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
       uint32_t did)
{
 memset(ndlp, 0, sizeof (struct lpfc_nodelist));

 lpfc_initialize_node(vport, ndlp, did);
 INIT_LIST_HEAD(&ndlp->nlp_listp);
 if (vport->phba->sli_rev == LPFC_SLI_REV4)
  ndlp->nlp_rpi = lpfc_sli4_alloc_rpi(vport->phba);


 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_NODE,
  "node init:       did:x%x",
  ndlp->nlp_DID, 0, 0);

 return;
}
