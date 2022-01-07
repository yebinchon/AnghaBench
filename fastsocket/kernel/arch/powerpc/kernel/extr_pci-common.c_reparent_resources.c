
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ end; scalar_t__ start; int name; struct resource* parent; struct resource* sibling; struct resource* child; } ;


 int pr_debug (char*,int ,unsigned long long,unsigned long long,int ) ;

__attribute__((used)) static int reparent_resources(struct resource *parent,
         struct resource *res)
{
 struct resource *p, **pp;
 struct resource **firstpp = ((void*)0);

 for (pp = &parent->child; (p = *pp) != ((void*)0); pp = &p->sibling) {
  if (p->end < res->start)
   continue;
  if (res->end < p->start)
   break;
  if (p->start < res->start || p->end > res->end)
   return -1;
  if (firstpp == ((void*)0))
   firstpp = pp;
 }
 if (firstpp == ((void*)0))
  return -1;
 res->parent = parent;
 res->child = *firstpp;
 res->sibling = *pp;
 *firstpp = res;
 *pp = ((void*)0);
 for (p = res->child; p != ((void*)0); p = p->sibling) {
  p->parent = res;
  pr_debug("PCI: Reparented %s [%llx..%llx] under %s\n",
    p->name,
    (unsigned long long)p->start,
    (unsigned long long)p->end, res->name);
 }
 return 0;
}
