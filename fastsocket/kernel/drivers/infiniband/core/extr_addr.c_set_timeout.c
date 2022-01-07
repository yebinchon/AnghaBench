
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addr_wq ;
 int cancel_delayed_work (int *) ;
 unsigned long jiffies ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int work ;

__attribute__((used)) static void set_timeout(unsigned long time)
{
 unsigned long delay;

 cancel_delayed_work(&work);

 delay = time - jiffies;
 if ((long)delay <= 0)
  delay = 1;

 queue_delayed_work(addr_wq, &work, delay);
}
