
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iu_entry {TYPE_2__* target; } ;
struct TYPE_3__ {int queue; } ;
struct TYPE_4__ {TYPE_1__ iu_queue; } ;


 int kfifo_put (int ,void*,int) ;

void srp_iu_put(struct iu_entry *iue)
{
 kfifo_put(iue->target->iu_queue.queue, (void *) &iue, sizeof(void *));
}
