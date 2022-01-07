
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_table {int holders; } ;


 int atomic_dec (int *) ;
 int smp_mb__before_atomic_dec () ;

void dm_table_put(struct dm_table *t)
{
 if (!t)
  return;

 smp_mb__before_atomic_dec();
 atomic_dec(&t->holders);
}
