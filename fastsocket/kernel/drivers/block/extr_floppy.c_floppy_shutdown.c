
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reset; } ;
struct TYPE_3__ {int (* redo ) () ;int (* done ) (int ) ;} ;


 int DPRINT (char*) ;
 TYPE_2__* FDCS ;
 int cancel_activity () ;
 unsigned long claim_dma_lock () ;
 TYPE_1__* cont ;
 int fd_disable_dma () ;
 int floppy_enable_hlt () ;
 int initialising ;
 int is_alive (char*) ;
 int printk (char*) ;
 int process_fd_request () ;
 int release_dma_lock (unsigned long) ;
 int show_floppy () ;
 int stub1 (int ) ;
 int stub2 () ;

__attribute__((used)) static void floppy_shutdown(unsigned long data)
{
 unsigned long flags;

 if (!initialising)
  show_floppy();
 cancel_activity();

 floppy_enable_hlt();

 flags = claim_dma_lock();
 fd_disable_dma();
 release_dma_lock(flags);



 if (!initialising)
  DPRINT("floppy timeout called\n");
 FDCS->reset = 1;
 if (cont) {
  cont->done(0);
  cont->redo();
 } else {
  printk("no cont in shutdown!\n");
  process_fd_request();
 }
 is_alive("floppy shutdown");
}
