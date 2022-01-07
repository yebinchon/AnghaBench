
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct semaphore {int dummy; } ;
struct driver_data {TYPE_1__* port; } ;
struct TYPE_2__ {struct semaphore cmd_slot; struct semaphore cmd_slot_unal; } ;


 int release_slot (TYPE_1__*,int) ;
 int up (struct semaphore*) ;

__attribute__((used)) static void mtip_hw_release_scatterlist(struct driver_data *dd, int tag,
        int unaligned)
{
 struct semaphore *sem = unaligned ? &dd->port->cmd_slot_unal :
       &dd->port->cmd_slot;
 release_slot(dd->port, tag);
 up(sem);
}
