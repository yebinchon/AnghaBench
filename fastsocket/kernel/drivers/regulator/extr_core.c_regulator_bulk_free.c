
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {int * consumer; } ;


 int regulator_put (int *) ;

void regulator_bulk_free(int num_consumers,
    struct regulator_bulk_data *consumers)
{
 int i;

 for (i = 0; i < num_consumers; i++) {
  regulator_put(consumers[i].consumer);
  consumers[i].consumer = ((void*)0);
 }
}
