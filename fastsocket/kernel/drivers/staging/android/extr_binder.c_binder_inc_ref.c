
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct binder_ref {scalar_t__ strong; scalar_t__ weak; int node; } ;


 int binder_inc_node (int ,int,int,struct list_head*) ;

__attribute__((used)) static int binder_inc_ref(struct binder_ref *ref, int strong,
     struct list_head *target_list)
{
 int ret;
 if (strong) {
  if (ref->strong == 0) {
   ret = binder_inc_node(ref->node, 1, 1, target_list);
   if (ret)
    return ret;
  }
  ref->strong++;
 } else {
  if (ref->weak == 0) {
   ret = binder_inc_node(ref->node, 0, 1, target_list);
   if (ret)
    return ret;
  }
  ref->weak++;
 }
 return 0;
}
