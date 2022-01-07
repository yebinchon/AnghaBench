
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sb_wait; int pending_writes; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ atomic_read (int *) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wq ;

void md_super_wait(struct mddev *mddev)
{

 DEFINE_WAIT(wq);
 for(;;) {
  prepare_to_wait(&mddev->sb_wait, &wq, TASK_UNINTERRUPTIBLE);
  if (atomic_read(&mddev->pending_writes)==0)
   break;
  schedule();
 }
 finish_wait(&mddev->sb_wait, &wq);
}
