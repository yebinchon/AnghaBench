
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int bitmap_index_changed; int (* commit ) (struct ll_disk*) ;} ;


 int stub1 (struct ll_disk*) ;

int sm_ll_commit(struct ll_disk *ll)
{
 int r = 0;

 if (ll->bitmap_index_changed) {
  r = ll->commit(ll);
  if (!r)
   ll->bitmap_index_changed = 0;
 }

 return r;
}
