
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_ref {scalar_t__ strong; scalar_t__ weak; int desc; int debug_id; TYPE_1__* proc; int node; } ;
struct TYPE_2__ {int pid; } ;


 int EINVAL ;
 int binder_dec_node (int ,int,int) ;
 int binder_delete_ref (struct binder_ref*) ;
 int binder_user_error (char*,int ,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int binder_dec_ref(struct binder_ref *ref, int strong)
{
 if (strong) {
  if (ref->strong == 0) {
   binder_user_error("binder: %d invalid dec strong, "
       "ref %d desc %d s %d w %d\n",
       ref->proc->pid, ref->debug_id,
       ref->desc, ref->strong, ref->weak);
   return -EINVAL;
  }
  ref->strong--;
  if (ref->strong == 0) {
   int ret;
   ret = binder_dec_node(ref->node, strong, 1);
   if (ret)
    return ret;
  }
 } else {
  if (ref->weak == 0) {
   binder_user_error("binder: %d invalid dec weak, "
       "ref %d desc %d s %d w %d\n",
       ref->proc->pid, ref->debug_id,
       ref->desc, ref->strong, ref->weak);
   return -EINVAL;
  }
  ref->weak--;
 }
 if (ref->strong == 0 && ref->weak == 0)
  binder_delete_ref(ref);
 return 0;
}
