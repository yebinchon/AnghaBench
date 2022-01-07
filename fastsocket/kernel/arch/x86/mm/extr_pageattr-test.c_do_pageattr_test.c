
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int kthread_should_stop () ;
 scalar_t__ pageattr_test () ;
 scalar_t__ print ;
 int schedule_timeout_interruptible (int) ;

__attribute__((used)) static int do_pageattr_test(void *__unused)
{
 while (!kthread_should_stop()) {
  schedule_timeout_interruptible(HZ*30);
  if (pageattr_test() < 0)
   break;
  if (print)
   print--;
 }
 return 0;
}
