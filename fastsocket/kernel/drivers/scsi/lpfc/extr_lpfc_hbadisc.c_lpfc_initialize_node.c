
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int phba; } ;
struct TYPE_6__ {unsigned long data; int function; } ;
struct TYPE_5__ {int evt_listp; } ;
struct TYPE_4__ {int evt_listp; } ;
struct lpfc_nodelist {int cmd_qdepth; int cmd_pending; int kref; int nlp_sid; int phba; struct lpfc_vport* vport; int nlp_DID; TYPE_3__ nlp_delayfunc; TYPE_2__ dev_loss_evt; TYPE_1__ els_retry_evt; } ;


 int INIT_LIST_HEAD (int *) ;
 int LPFC_MAX_TGT_QDEPTH ;
 int NLP_INT_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_NO_SID ;
 int atomic_set (int *,int ) ;
 int init_timer (TYPE_3__*) ;
 int kref_init (int *) ;
 int lpfc_els_retry_delay ;

__attribute__((used)) static inline void
lpfc_initialize_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
 uint32_t did)
{
 INIT_LIST_HEAD(&ndlp->els_retry_evt.evt_listp);
 INIT_LIST_HEAD(&ndlp->dev_loss_evt.evt_listp);
 init_timer(&ndlp->nlp_delayfunc);
 ndlp->nlp_delayfunc.function = lpfc_els_retry_delay;
 ndlp->nlp_delayfunc.data = (unsigned long)ndlp;
 ndlp->nlp_DID = did;
 ndlp->vport = vport;
 ndlp->phba = vport->phba;
 ndlp->nlp_sid = NLP_NO_SID;
 kref_init(&ndlp->kref);
 NLP_INT_NODE_ACT(ndlp);
 atomic_set(&ndlp->cmd_pending, 0);
 ndlp->cmd_qdepth = LPFC_MAX_TGT_QDEPTH;
}
