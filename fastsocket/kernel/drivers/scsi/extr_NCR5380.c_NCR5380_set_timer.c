
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NCR5380_hostdata {int coroutine; scalar_t__ time_expires; } ;


 scalar_t__ jiffies ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void NCR5380_set_timer(struct NCR5380_hostdata *hostdata, unsigned long timeout)
{
 hostdata->time_expires = jiffies + timeout;
 schedule_delayed_work(&hostdata->coroutine, timeout);
}
