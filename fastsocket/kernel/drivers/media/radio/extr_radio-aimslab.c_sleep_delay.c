
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jiffies_to_msecs (int) ;
 long msecs_to_jiffies (int) ;
 int msleep (int ) ;
 int udelay (long) ;

__attribute__((used)) static void sleep_delay(long n)
{

 int d = n / msecs_to_jiffies(1000);
 if (!d)
  udelay(n);
 else
  msleep(jiffies_to_msecs(d));
}
