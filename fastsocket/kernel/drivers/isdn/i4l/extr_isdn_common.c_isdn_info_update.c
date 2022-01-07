
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* private; scalar_t__ next; } ;
typedef TYPE_1__ infostruct ;
struct TYPE_4__ {int info_waitq; TYPE_1__* infochain; } ;


 TYPE_2__* dev ;
 int wake_up_interruptible (int *) ;

void
isdn_info_update(void)
{
 infostruct *p = dev->infochain;

 while (p) {
  *(p->private) = 1;
  p = (infostruct *) p->next;
 }
 wake_up_interruptible(&(dev->info_waitq));
}
