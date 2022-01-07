
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int jiffies; int status; int data; } ;
struct TYPE_8__ {scalar_t__ expires; int function; } ;
struct TYPE_7__ {int func; } ;


 int FD_STATUS ;
 int OLOGSIZE ;
 int command_status ;
 int cont ;
 int current_req ;
 scalar_t__ do_floppy ;
 int fd_inb (int ) ;
 TYPE_2__ fd_timeout ;
 TYPE_2__ fd_timer ;
 int fdc_busy ;
 TYPE_1__ floppy_work ;
 scalar_t__ interruptjiffies ;
 scalar_t__ jiffies ;
 int lasthandler ;
 int lastredo ;
 TYPE_3__* output_log ;
 int output_log_pos ;
 int printk (char*,...) ;
 int * reply_buffer ;
 int resultjiffies ;
 int resultsize ;
 int timeout_message ;
 scalar_t__ timer_pending (TYPE_2__*) ;
 scalar_t__ work_pending (TYPE_1__*) ;

__attribute__((used)) static void show_floppy(void)
{
 int i;

 printk("\n");
 printk("floppy driver state\n");
 printk("-------------------\n");
 printk("now=%lu last interrupt=%lu diff=%lu last called handler=%p\n",
        jiffies, interruptjiffies, jiffies - interruptjiffies,
        lasthandler);
 printk("status=%x\n", fd_inb(FD_STATUS));
 printk("fdc_busy=%lu\n", fdc_busy);
 if (do_floppy)
  printk("do_floppy=%p\n", do_floppy);
 if (work_pending(&floppy_work))
  printk("floppy_work.func=%p\n", floppy_work.func);
 if (timer_pending(&fd_timer))
  printk("fd_timer.function=%p\n", fd_timer.function);
 if (timer_pending(&fd_timeout)) {
  printk("timer_function=%p\n", fd_timeout.function);
  printk("expires=%lu\n", fd_timeout.expires - jiffies);
  printk("now=%lu\n", jiffies);
 }
 printk("cont=%p\n", cont);
 printk("current_req=%p\n", current_req);
 printk("command_status=%d\n", command_status);
 printk("\n");
}
