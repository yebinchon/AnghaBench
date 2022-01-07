
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_exception_store {TYPE_1__* type; } ;
struct TYPE_2__ {int (* dtr ) (struct dm_exception_store*) ;} ;


 int kfree (struct dm_exception_store*) ;
 int put_type (TYPE_1__*) ;
 int stub1 (struct dm_exception_store*) ;

void dm_exception_store_destroy(struct dm_exception_store *store)
{
 store->type->dtr(store);
 put_type(store->type);
 kfree(store);
}
