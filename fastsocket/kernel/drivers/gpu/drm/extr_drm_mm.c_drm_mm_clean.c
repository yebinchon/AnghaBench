
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {TYPE_2__* next; } ;
struct TYPE_3__ {struct list_head node_list; } ;
struct drm_mm {TYPE_1__ head_node; } ;
struct TYPE_4__ {struct list_head* next; } ;



int drm_mm_clean(struct drm_mm * mm)
{
 struct list_head *head = &mm->head_node.node_list;

 return (head->next->next == head);
}
