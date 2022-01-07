
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct smu_private {unsigned int busy; int list; int lock; int wait; TYPE_1__ cmd; int mode; } ;
struct inode {int dummy; } ;
struct file {struct smu_private* private_data; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int kfree (struct smu_private*) ;
 int list_del (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int smu_clist_lock ;
 int smu_file_closing ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;

__attribute__((used)) static int smu_release(struct inode *inode, struct file *file)
{
 struct smu_private *pp = file->private_data;
 unsigned long flags;
 unsigned int busy;

 if (pp == 0)
  return 0;

 file->private_data = ((void*)0);


 spin_lock_irqsave(&pp->lock, flags);
 pp->mode = smu_file_closing;
 busy = pp->busy;


 if (busy && pp->cmd.status == 1) {
  DECLARE_WAITQUEUE(wait, current);

  add_wait_queue(&pp->wait, &wait);
  for (;;) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   if (pp->cmd.status != 1)
    break;
   spin_unlock_irqrestore(&pp->lock, flags);
   schedule();
   spin_lock_irqsave(&pp->lock, flags);
  }
  set_current_state(TASK_RUNNING);
  remove_wait_queue(&pp->wait, &wait);
 }
 spin_unlock_irqrestore(&pp->lock, flags);

 spin_lock_irqsave(&smu_clist_lock, flags);
 list_del(&pp->list);
 spin_unlock_irqrestore(&smu_clist_lock, flags);
 kfree(pp);

 return 0;
}
