
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_exit (int) ;

__attribute__((used)) static void kernel_thread_helper(int (*fn)(void *), void *arg)
{
 fn(arg);
 do_exit(-1);
}
