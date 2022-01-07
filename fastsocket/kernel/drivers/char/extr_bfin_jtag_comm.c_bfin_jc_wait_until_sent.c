
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int bfin_jc_write_buf ;
 int circ_empty (int *) ;
 int current ;
 int jiffies ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static void
bfin_jc_wait_until_sent(struct tty_struct *tty, int timeout)
{
 unsigned long expire = jiffies + timeout;
 while (!circ_empty(&bfin_jc_write_buf)) {
  if (signal_pending(current))
   break;
  if (time_after(jiffies, expire))
   break;
 }
}
