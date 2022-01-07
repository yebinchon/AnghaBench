
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int __kernel_thread (int (*) (void*),void*,unsigned long) ;

pid_t kernel_thread(int (*fn)(void *), void *arg, unsigned long flags)
{






 return __kernel_thread(fn, arg, flags);
}
