
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource_list_x {struct resource_list_x* next; TYPE_1__* dev; scalar_t__ add_size; struct resource* res; } ;
struct resource_list {struct resource_list* next; struct resource* res; } ;
struct resource {scalar_t__ start; scalar_t__ end; int flags; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_2__ {struct resource* resource; } ;


 int adjust_resource (struct resource*,scalar_t__,scalar_t__) ;
 int kfree (struct resource_list_x*) ;
 scalar_t__ pci_assign_resource (TYPE_1__*,int) ;
 int reset_resource (struct resource*) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static void adjust_resources_sorted(struct resource_list_x *add_head,
  struct resource_list *head)
{
 struct resource *res;
 struct resource_list_x *list, *tmp, *prev;
 struct resource_list *hlist;
 resource_size_t add_size;
 int idx;

 prev = add_head;
 for (list = add_head->next; list;) {
  res = list->res;

  if (!res->flags)
   goto out;


  for (hlist = head->next; hlist && hlist->res != res;
    hlist = hlist->next);
  if (!hlist) {
   prev = list;
   list = list->next;
   continue;
  }

  idx = res - &list->dev->resource[0];
  add_size=list->add_size;
  if (!resource_size(res) && add_size) {
    res->end = res->start + add_size - 1;
    if(pci_assign_resource(list->dev, idx))
    reset_resource(res);
  } else if (add_size) {
   adjust_resource(res, res->start,
    resource_size(res) + add_size);
  }
out:
  tmp = list;
  prev->next = list = list->next;
  kfree(tmp);
 }
}
