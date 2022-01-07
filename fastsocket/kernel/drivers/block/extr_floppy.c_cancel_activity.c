
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;


 int PREPARE_WORK (int *,int ) ;
 int del_timer (int *) ;
 int * do_floppy ;
 scalar_t__ empty ;
 int fd_timer ;
 int floppy_lock ;
 int floppy_work ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cancel_activity(void)
{
 unsigned long flags;

 spin_lock_irqsave(&floppy_lock, flags);
 do_floppy = ((void*)0);
 PREPARE_WORK(&floppy_work, (work_func_t)empty);
 del_timer(&fd_timer);
 spin_unlock_irqrestore(&floppy_lock, flags);
}
