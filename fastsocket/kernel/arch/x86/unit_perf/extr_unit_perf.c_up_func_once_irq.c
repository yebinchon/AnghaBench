
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int up_test_func ;


 int local_irq_disable () ;
 int local_irq_enable () ;
 int up_func_once (char const*,int ,void*) ;

void up_func_once_irq(const char *name, up_test_func cb, void *data)
{
 local_irq_disable();
 up_func_once(name, cb, data);
 local_irq_enable();
}
