
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int up_test_func ;


 int preempt_disable () ;
 int preempt_enable () ;
 int up_func_once (char const*,int ,void*) ;

void up_func_once_preempt(const char *name, up_test_func cb, void *data)
{
 preempt_disable();
 up_func_once(name, cb, data);
 preempt_enable();
}
