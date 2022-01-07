
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int
within_logging_rate_limit (void)
{
 static unsigned long count, last_time;

 if (time_after(jiffies, last_time + 5 * HZ))
  count = 0;
 if (count < 5) {
  last_time = jiffies;
  count++;
  return 1;
 }
 return 0;

}
