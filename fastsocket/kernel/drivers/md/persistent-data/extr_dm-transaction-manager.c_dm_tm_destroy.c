
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int is_clone; } ;


 int kfree (struct dm_transaction_manager*) ;
 int wipe_shadow_table (struct dm_transaction_manager*) ;

void dm_tm_destroy(struct dm_transaction_manager *tm)
{
 if (!tm->is_clone)
  wipe_shadow_table(tm);

 kfree(tm);
}
