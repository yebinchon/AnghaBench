
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list_x {struct resource_list_x* next; int add_size; int flags; int end; int start; struct pci_dev* dev; struct resource* res; } ;
struct resource {int flags; int end; int start; } ;
struct pci_dev {int dummy; } ;
typedef int resource_size_t ;


 int GFP_KERNEL ;
 struct resource_list_x* kmalloc (int,int ) ;
 int pr_warning (char*) ;

__attribute__((used)) static void add_to_list(struct resource_list_x *head,
   struct pci_dev *dev, struct resource *res,
   resource_size_t add_size)
{
 struct resource_list_x *list = head;
 struct resource_list_x *ln = list->next;
 struct resource_list_x *tmp;

 tmp = kmalloc(sizeof(*tmp), GFP_KERNEL);
 if (!tmp) {
  pr_warning("add_to_list: kmalloc() failed!\n");
  return;
 }

 tmp->next = ln;
 tmp->res = res;
 tmp->dev = dev;
 tmp->start = res->start;
 tmp->end = res->end;
 tmp->flags = res->flags;
 tmp->add_size = add_size;
 list->next = tmp;
}
