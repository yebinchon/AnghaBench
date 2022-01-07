
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; unsigned long end; struct resource* sibling; struct resource* child; } ;



__attribute__((used)) static struct resource *_sparc_find_resource(struct resource *root,
          unsigned long hit)
{
        struct resource *tmp;

 for (tmp = root->child; tmp != 0; tmp = tmp->sibling) {
  if (tmp->start <= hit && tmp->end >= hit)
   return tmp;
 }
 return ((void*)0);
}
