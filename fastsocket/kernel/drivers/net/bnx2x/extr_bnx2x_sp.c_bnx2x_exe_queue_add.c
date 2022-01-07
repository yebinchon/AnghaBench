
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_exeq_elem {int link; } ;
struct bnx2x_exe_queue_obj {int (* optimize ) (struct bnx2x*,int ,struct bnx2x_exeq_elem*) ;int (* validate ) (struct bnx2x*,int ,struct bnx2x_exeq_elem*) ;int lock; int exe_queue; int owner; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*,int) ;
 int bnx2x_exe_queue_free_elem (struct bnx2x*,struct bnx2x_exeq_elem*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct bnx2x*,int ,struct bnx2x_exeq_elem*) ;
 int stub2 (struct bnx2x*,int ,struct bnx2x_exeq_elem*) ;

__attribute__((used)) static inline int bnx2x_exe_queue_add(struct bnx2x *bp,
          struct bnx2x_exe_queue_obj *o,
          struct bnx2x_exeq_elem *elem,
          bool restore)
{
 int rc;

 spin_lock_bh(&o->lock);

 if (!restore) {

  rc = o->optimize(bp, o->owner, elem);
  if (rc)
   goto free_and_exit;


  rc = o->validate(bp, o->owner, elem);
  if (rc) {
   DP(BNX2X_MSG_SP, "Preamble failed: %d\n", rc);
   goto free_and_exit;
  }
 }


 list_add_tail(&elem->link, &o->exe_queue);

 spin_unlock_bh(&o->lock);

 return 0;

free_and_exit:
 bnx2x_exe_queue_free_elem(bp, elem);

 spin_unlock_bh(&o->lock);

 return rc;
}
