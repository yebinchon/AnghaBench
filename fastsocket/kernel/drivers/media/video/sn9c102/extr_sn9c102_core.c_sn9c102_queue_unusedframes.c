
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sn9c102_device {size_t nbuffers; int queue_lock; int inqueue; TYPE_1__* frame; } ;
struct TYPE_2__ {scalar_t__ state; int frame; } ;


 scalar_t__ F_QUEUED ;
 scalar_t__ F_UNUSED ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sn9c102_queue_unusedframes(struct sn9c102_device* cam)
{
 unsigned long lock_flags;
 u32 i;

 for (i = 0; i < cam->nbuffers; i++)
  if (cam->frame[i].state == F_UNUSED) {
   cam->frame[i].state = F_QUEUED;
   spin_lock_irqsave(&cam->queue_lock, lock_flags);
   list_add_tail(&cam->frame[i].frame, &cam->inqueue);
   spin_unlock_irqrestore(&cam->queue_lock, lock_flags);
  }
}
