
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_x {int dummy; } ;
struct resource_list {int dummy; } ;


 int adjust_resources_sorted (struct resource_list_x*,struct resource_list*) ;
 int assign_requested_resources_sorted (struct resource_list*,struct resource_list_x*) ;
 int free_list (int ,struct resource_list*) ;
 int resource_list ;

__attribute__((used)) static void __assign_resources_sorted(struct resource_list *head,
     struct resource_list_x *add_head,
     struct resource_list_x *fail_head)
{

 assign_requested_resources_sorted(head, fail_head);



 if (add_head)
  adjust_resources_sorted(add_head, head);
 free_list(resource_list, head);
}
