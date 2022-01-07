
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; int mutex; } ;


 int D_SCAN (char*) ;
 int S_SCAN_HW ;
 int il_do_scan_abort (struct il_priv*) ;
 unsigned long jiffies ;
 int lockdep_assert_held (int *) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int msleep (int) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_before_eq (unsigned long,unsigned long) ;

int
il_scan_cancel_timeout(struct il_priv *il, unsigned long ms)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(ms);

 lockdep_assert_held(&il->mutex);

 D_SCAN("Scan cancel timeout\n");

 il_do_scan_abort(il);

 while (time_before_eq(jiffies, timeout)) {
  if (!test_bit(S_SCAN_HW, &il->status))
   break;
  msleep(20);
 }

 return test_bit(S_SCAN_HW, &il->status);
}
