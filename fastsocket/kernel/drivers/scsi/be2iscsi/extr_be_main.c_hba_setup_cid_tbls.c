
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iscsi_endpoint {int dummy; } ;
struct TYPE_6__ {int cxns_per_ctrl; } ;
struct beiscsi_hba {int avlbl_cids; TYPE_3__ params; TYPE_2__* phwi_ctrlr; int * cid_array; int * ep_array; void* conn_table; } ;
struct beiscsi_conn {int dummy; } ;
struct TYPE_5__ {TYPE_1__* wrb_context; } ;
struct TYPE_4__ {int cid; } ;


 int BEISCSI_LOG_INIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int kfree (int *) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int hba_setup_cid_tbls(struct beiscsi_hba *phba)
{
 int i;

 phba->cid_array = kzalloc(sizeof(void *) * phba->params.cxns_per_ctrl,
      GFP_KERNEL);
 if (!phba->cid_array) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : Failed to allocate memory in "
       "hba_setup_cid_tbls\n");
  return -ENOMEM;
 }
 phba->ep_array = kzalloc(sizeof(struct iscsi_endpoint *) *
     phba->params.cxns_per_ctrl, GFP_KERNEL);
 if (!phba->ep_array) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : Failed to allocate memory in "
       "hba_setup_cid_tbls\n");
  kfree(phba->cid_array);
  phba->cid_array = ((void*)0);
  return -ENOMEM;
 }

 phba->conn_table = kzalloc(sizeof(struct beiscsi_conn *) *
       phba->params.cxns_per_ctrl, GFP_KERNEL);
 if (!phba->conn_table) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BM_%d : Failed to allocate memory in"
       "hba_setup_cid_tbls\n");

  kfree(phba->cid_array);
  kfree(phba->ep_array);
  phba->cid_array = ((void*)0);
  phba->ep_array = ((void*)0);
  return -ENOMEM;
 }

 for (i = 0; i < phba->params.cxns_per_ctrl; i++)
  phba->cid_array[i] = phba->phwi_ctrlr->wrb_context[i].cid;

 phba->avlbl_cids = phba->params.cxns_per_ctrl;
 return 0;
}
