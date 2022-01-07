
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ tpc; } ;


 int HZ ;
 unsigned long jiffies ;
 int printk (char*,scalar_t__,void*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void log_unaligned(struct pt_regs *regs)
{
 static unsigned long count, last_time;

 if (time_after(jiffies, last_time + 5 * HZ))
  count = 0;
 if (count < 5) {
  last_time = jiffies;
  count++;
  printk("Kernel unaligned access at TPC[%lx] %pS\n",
         regs->tpc, (void *) regs->tpc);
 }
}
