
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int is_clone; struct dm_transaction_manager* real; } ;


 int GFP_KERNEL ;
 struct dm_transaction_manager* kmalloc (int,int ) ;

struct dm_transaction_manager *dm_tm_create_non_blocking_clone(struct dm_transaction_manager *real)
{
 struct dm_transaction_manager *tm;

 tm = kmalloc(sizeof(*tm), GFP_KERNEL);
 if (tm) {
  tm->is_clone = 1;
  tm->real = real;
 }

 return tm;
}
