
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*,...) ;
 int FD_COMMAND_NONE ;
 scalar_t__ blk_peek_request (int ) ;
 int clear_bit (int ,int *) ;
 int command_status ;
 int * cont ;
 scalar_t__ current_req ;
 int del_timer (int *) ;
 int do_fd_request (int ) ;
 scalar_t__ do_floppy ;
 int fd_timeout ;
 int fdc_busy ;
 int fdc_wait ;
 int floppy_lock ;
 int floppy_queue ;
 int * raw_cmd ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void unlock_fdc(void)
{
 unsigned long flags;

 raw_cmd = ((void*)0);
 if (!test_bit(0, &fdc_busy))
  DPRINT("FDC access conflict!\n");

 if (do_floppy)
  DPRINT("device interrupt still active at FDC release: %p!\n",
         do_floppy);
 command_status = FD_COMMAND_NONE;
 spin_lock_irqsave(&floppy_lock, flags);
 del_timer(&fd_timeout);
 cont = ((void*)0);
 clear_bit(0, &fdc_busy);
 if (current_req || blk_peek_request(floppy_queue))
  do_fd_request(floppy_queue);
 spin_unlock_irqrestore(&floppy_lock, flags);
 wake_up(&fdc_wait);
}
