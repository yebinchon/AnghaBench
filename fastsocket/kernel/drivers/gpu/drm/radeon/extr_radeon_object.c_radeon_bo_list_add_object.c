
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct radeon_bo_list {TYPE_1__ tv; scalar_t__ wdomain; } ;
struct list_head {int dummy; } ;


 int list_add (int *,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;

void radeon_bo_list_add_object(struct radeon_bo_list *lobj,
    struct list_head *head)
{
 if (lobj->wdomain) {
  list_add(&lobj->tv.head, head);
 } else {
  list_add_tail(&lobj->tv.head, head);
 }
}
