
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_entry {int val; } ;
struct context_entry {int dummy; } ;


 int VTD_PAGE_MASK ;
 int * phys_to_virt (int) ;
 scalar_t__ root_present (struct root_entry*) ;

__attribute__((used)) static inline struct context_entry *
get_context_addr_from_root(struct root_entry *root)
{
 return (struct context_entry *)
  (root_present(root)?phys_to_virt(
  root->val & VTD_PAGE_MASK) :
  ((void*)0));
}
