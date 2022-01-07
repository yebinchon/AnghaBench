
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_exe_queue_obj {int pending_comp; int exe_queue; } ;


 int list_empty (int *) ;
 int mb () ;

__attribute__((used)) static inline bool bnx2x_exe_queue_empty(struct bnx2x_exe_queue_obj *o)
{
 bool empty = list_empty(&o->exe_queue);


 mb();

 return empty && list_empty(&o->pending_comp);
}
