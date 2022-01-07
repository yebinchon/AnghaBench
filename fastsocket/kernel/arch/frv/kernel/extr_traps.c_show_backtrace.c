
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_context {int dummy; } ;
struct pt_regs {unsigned long sp; struct pt_regs* next_frame; } ;
struct TYPE_2__ {int pid; int comm; } ;


 TYPE_1__* current ;
 int printk (char*,...) ;
 int show_backtrace_regs (struct pt_regs*) ;

void show_backtrace(struct pt_regs *frame, unsigned long sp)
{
 struct pt_regs *frame0;
 unsigned long tos = 0, stop = 0, base;
 int format;

 base = ((((unsigned long) frame) + 8191) & ~8191) - sizeof(struct user_context);
 frame0 = (struct pt_regs *) base;

 if (sp) {
  tos = sp;
  stop = (unsigned long) frame;
 }

 printk("\nProcess %s (pid: %d)\n\n", current->comm, current->pid);

 for (;;) {


  format = 0;
  while (tos < stop) {
   if (format == 0)
    printk(" %04lx :", tos & 0xffff);

   printk(" %08lx", *(unsigned long *) tos);

   tos += 4;
   format++;
   if (format == 8) {
    printk("\n");
    format = 0;
   }
  }

  if (format > 0)
   printk("\n");


  if (frame == frame0)
   break;

  tos = frame->sp;
  if (((unsigned long) frame) + sizeof(*frame) != tos) {
   printk("-- TOS %08lx does not follow frame %p --\n",
          tos, frame);
   break;
  }

  show_backtrace_regs(frame);


  stop = (unsigned long) frame->next_frame;
  if (stop != base &&
      (stop < tos ||
       stop > base ||
       (stop < base && stop + sizeof(*frame) > base) ||
       stop & 3)) {
   printk("-- next_frame %08lx is invalid (range %08lx-%08lx) --\n",
          stop, tos, base);
   break;
  }


  frame = frame->next_frame;
 }


 show_backtrace_regs(frame0);

}
