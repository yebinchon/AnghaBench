
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; unsigned long end; struct resource* sibling; struct resource* child; } ;



__attribute__((used)) static struct resource *shmedia_find_resource(struct resource *root,
           unsigned long vaddr)
{
 struct resource *res;

 for (res = root->child; res; res = res->sibling)
  if (res->start <= vaddr && res->end >= vaddr)
   return res;

 return ((void*)0);
}
