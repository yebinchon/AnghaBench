
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_open_hash {int order; int * table; } ;


 int PAGE_SIZE ;
 int kfree (int *) ;
 int vfree (int *) ;

void drm_ht_remove(struct drm_open_hash *ht)
{
 if (ht->table) {
  if ((PAGE_SIZE / sizeof(*ht->table)) >> ht->order)
   kfree(ht->table);
  else
   vfree(ht->table);
  ht->table = ((void*)0);
 }
}
