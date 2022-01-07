
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__** top; struct TYPE_3__** dir; } ;


 int EHEA_MAP_ENTRIES ;
 TYPE_1__* ehea_bmap ;
 int ehea_busmap_mutex ;
 int kfree (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ehea_destroy_busmap(void)
{
 int top, dir;
 mutex_lock(&ehea_busmap_mutex);
 if (!ehea_bmap)
  goto out_destroy;

 for (top = 0; top < EHEA_MAP_ENTRIES; top++) {
  if (!ehea_bmap->top[top])
   continue;

  for (dir = 0; dir < EHEA_MAP_ENTRIES; dir++) {
   if (!ehea_bmap->top[top]->dir[dir])
    continue;

   kfree(ehea_bmap->top[top]->dir[dir]);
  }

  kfree(ehea_bmap->top[top]);
 }

 kfree(ehea_bmap);
 ehea_bmap = ((void*)0);
out_destroy:
 mutex_unlock(&ehea_busmap_mutex);
}
