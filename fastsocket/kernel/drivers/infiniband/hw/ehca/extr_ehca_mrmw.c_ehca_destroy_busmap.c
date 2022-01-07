
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** top; struct TYPE_4__** dir; } ;


 int EHCA_MAP_ENTRIES ;
 TYPE_1__* ehca_bmap ;
 int ehca_bmap_valid (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;

void ehca_destroy_busmap(void)
{
 int top, dir;

 if (!ehca_bmap)
  return;

 for (top = 0; top < EHCA_MAP_ENTRIES; top++) {
  if (!ehca_bmap_valid(ehca_bmap->top[top]))
   continue;
  for (dir = 0; dir < EHCA_MAP_ENTRIES; dir++) {
   if (!ehca_bmap_valid(ehca_bmap->top[top]->dir[dir]))
    continue;

   kfree(ehca_bmap->top[top]->dir[dir]);
  }

  kfree(ehca_bmap->top[top]);
 }

 kfree(ehca_bmap);
 ehca_bmap = ((void*)0);
}
