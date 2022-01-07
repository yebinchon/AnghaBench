
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct stliport* driver_data; } ;
struct stliport {int state; } ;


 int HZ ;
 int ST_TXBUSY ;
 int current ;
 int jiffies ;
 int msleep_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after_eq (int,unsigned long) ;

__attribute__((used)) static void stli_waituntilsent(struct tty_struct *tty, int timeout)
{
 struct stliport *portp;
 unsigned long tend;

 portp = tty->driver_data;
 if (portp == ((void*)0))
  return;

 if (timeout == 0)
  timeout = HZ;
 tend = jiffies + timeout;

 while (test_bit(ST_TXBUSY, &portp->state)) {
  if (signal_pending(current))
   break;
  msleep_interruptible(20);
  if (time_after_eq(jiffies, tend))
   break;
 }
}
