
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int MC417_MIRDY ;
 int MC417_RWD ;
 int cx_read (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int mc417_wait_ready(struct cx23885_dev *dev)
{
 u32 mi_ready;
 unsigned long timeout = jiffies + msecs_to_jiffies(1);

 for (;;) {
  mi_ready = cx_read(MC417_RWD) & MC417_MIRDY;
  if (mi_ready != 0)
   return 0;
  if (time_after(jiffies, timeout))
   return -1;
  udelay(1);
 }
}
