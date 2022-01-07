
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdio_func_tuple {struct sdio_func_tuple* next; } ;
struct sdio_func {TYPE_1__* card; struct sdio_func_tuple* tuples; } ;
struct TYPE_2__ {int dev; struct sdio_func_tuple* tuples; } ;


 int kfree (struct sdio_func_tuple*) ;
 int put_device (int *) ;

void sdio_free_func_cis(struct sdio_func *func)
{
 struct sdio_func_tuple *tuple, *victim;

 tuple = func->tuples;

 while (tuple && tuple != func->card->tuples) {
  victim = tuple;
  tuple = tuple->next;
  kfree(victim);
 }

 func->tuples = ((void*)0);





 put_device(&func->card->dev);
}
