
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int DPRINT (char*) ;
 int IRQ_MFP_FDC ;
 int atari_disable_irq (int ) ;
 int atari_enable_irq (int ) ;
 TYPE_1__* current ;
 int fdc_busy ;
 int fdc_wait ;
 int floppy_irq ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 int redo_fd_request () ;
 int sleep_on (int *) ;
 int stdma_lock (int ,int *) ;

void do_fd_request(struct request_queue * q)
{
  unsigned long flags;

 DPRINT(("do_fd_request for pid %d\n",current->pid));
 while( fdc_busy ) sleep_on( &fdc_wait );
 fdc_busy = 1;
 stdma_lock(floppy_irq, ((void*)0));

 atari_disable_irq( IRQ_MFP_FDC );
 local_save_flags(flags);

 redo_fd_request();
 local_irq_restore(flags);
 atari_enable_irq( IRQ_MFP_FDC );
}
