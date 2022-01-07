
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct semaphore {int dummy; } ;
struct scatterlist {int dummy; } ;
struct driver_data {TYPE_2__* port; int dd_flag; } ;
struct TYPE_4__ {TYPE_1__* commands; struct semaphore cmd_slot; struct semaphore cmd_slot_unal; } ;
struct TYPE_3__ {struct scatterlist* sg; } ;


 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int down (struct semaphore*) ;
 int get_slot (TYPE_2__*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int up (struct semaphore*) ;

__attribute__((used)) static struct scatterlist *mtip_hw_get_scatterlist(struct driver_data *dd,
         int *tag, int unaligned)
{
 struct semaphore *sem = unaligned ? &dd->port->cmd_slot_unal :
       &dd->port->cmd_slot;






 down(sem);
 *tag = get_slot(dd->port);

 if (unlikely(test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))) {
  up(sem);
  return ((void*)0);
 }
 if (unlikely(*tag < 0)) {
  up(sem);
  return ((void*)0);
 }

 return dd->port->commands[*tag].sg;
}
