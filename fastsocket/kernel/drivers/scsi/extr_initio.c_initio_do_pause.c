
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 unsigned int jiffies ;
 scalar_t__ time_before_eq (unsigned int,unsigned long) ;

__attribute__((used)) static void initio_do_pause(unsigned amount)
{

 unsigned long the_time = jiffies + amount;

 while (time_before_eq(jiffies, the_time))
  cpu_relax();
}
