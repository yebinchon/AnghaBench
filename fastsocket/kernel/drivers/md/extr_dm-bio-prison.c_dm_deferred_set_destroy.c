
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_deferred_set {int dummy; } ;


 int kfree (struct dm_deferred_set*) ;

void dm_deferred_set_destroy(struct dm_deferred_set *ds)
{
 kfree(ds);
}
