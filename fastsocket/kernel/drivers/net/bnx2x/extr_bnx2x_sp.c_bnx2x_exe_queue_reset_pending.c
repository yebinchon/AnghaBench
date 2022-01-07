
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_exe_queue_obj {int lock; } ;
struct bnx2x {int dummy; } ;


 int __bnx2x_exe_queue_reset_pending (struct bnx2x*,struct bnx2x_exe_queue_obj*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void bnx2x_exe_queue_reset_pending(struct bnx2x *bp,
       struct bnx2x_exe_queue_obj *o)
{
 spin_lock_bh(&o->lock);

 __bnx2x_exe_queue_reset_pending(bp, o);

 spin_unlock_bh(&o->lock);
}
