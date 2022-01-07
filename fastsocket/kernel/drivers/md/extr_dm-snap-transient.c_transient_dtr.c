
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store {int context; } ;


 int kfree (int ) ;

__attribute__((used)) static void transient_dtr(struct dm_exception_store *store)
{
 kfree(store->context);
}
