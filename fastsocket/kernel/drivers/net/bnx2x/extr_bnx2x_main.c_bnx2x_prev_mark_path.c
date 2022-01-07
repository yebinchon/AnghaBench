
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_prev_path_list {int undi; int list; scalar_t__ aer; int path; int slot; int bus; } ;
struct bnx2x {TYPE_2__* pdev; } ;
struct TYPE_4__ {int devfn; TYPE_1__* bus; } ;
struct TYPE_3__ {int number; } ;


 int BNX2X_ERR (char*,...) ;
 int BP_PATH (struct bnx2x*) ;
 int BP_PORT (struct bnx2x*) ;
 int DP (int ,char*,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NETIF_MSG_HW ;
 int PCI_SLOT (int ) ;
 int bnx2x_prev_list ;
 struct bnx2x_prev_path_list* bnx2x_prev_path_get_entry (struct bnx2x*) ;
 int bnx2x_prev_sem ;
 int down_interruptible (int *) ;
 int kfree (struct bnx2x_prev_path_list*) ;
 struct bnx2x_prev_path_list* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int up (int *) ;

__attribute__((used)) static int bnx2x_prev_mark_path(struct bnx2x *bp, bool after_undi)
{
 struct bnx2x_prev_path_list *tmp_list;
 int rc;

 rc = down_interruptible(&bnx2x_prev_sem);
 if (rc) {
  BNX2X_ERR("Received %d when tried to take lock\n", rc);
  return rc;
 }


 tmp_list = bnx2x_prev_path_get_entry(bp);
 if (tmp_list) {
  if (!tmp_list->aer) {
   BNX2X_ERR("Re-Marking the path.\n");
  } else {
   DP(NETIF_MSG_HW, "Removing AER indication from path %d\n",
      BP_PATH(bp));
   tmp_list->aer = 0;
  }
  up(&bnx2x_prev_sem);
  return 0;
 }
 up(&bnx2x_prev_sem);


 tmp_list = kmalloc(sizeof(struct bnx2x_prev_path_list), GFP_KERNEL);
 if (!tmp_list) {
  BNX2X_ERR("Failed to allocate 'bnx2x_prev_path_list'\n");
  return -ENOMEM;
 }

 tmp_list->bus = bp->pdev->bus->number;
 tmp_list->slot = PCI_SLOT(bp->pdev->devfn);
 tmp_list->path = BP_PATH(bp);
 tmp_list->aer = 0;
 tmp_list->undi = after_undi ? (1 << BP_PORT(bp)) : 0;

 rc = down_interruptible(&bnx2x_prev_sem);
 if (rc) {
  BNX2X_ERR("Received %d when tried to take lock\n", rc);
  kfree(tmp_list);
 } else {
  DP(NETIF_MSG_HW, "Marked path [%d] - finished previous unload\n",
     BP_PATH(bp));
  list_add(&tmp_list->list, &bnx2x_prev_list);
  up(&bnx2x_prev_sem);
 }

 return rc;
}
