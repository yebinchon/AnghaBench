
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int dummy; } ;


 int MO_GP0_IO ;
 int cx_read (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int wait_ready_gpio0_bit1(struct cx88_core *core, u32 state)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(1);
 u32 gpio0,need;

 need = state ? 2 : 0;
 for (;;) {
  gpio0 = cx_read(MO_GP0_IO) & 2;
  if (need == gpio0)
   return 0;
  if (time_after(jiffies,timeout))
   return -1;
  udelay(1);
 }
}
