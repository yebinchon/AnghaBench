
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_function_data {int (* fn ) () ;int ret; } ;


 int em_func (struct em_function_data*) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int (*) (struct em_function_data*),struct em_function_data*,int) ;

__attribute__((used)) static int em_call_function(int (*fn)(void))
{
 struct em_function_data data;

 data.fn = fn;
 data.ret = 0;

 preempt_disable();
 smp_call_function(em_func, &data, 1);
 em_func(&data);
 preempt_enable();

 return data.ret;
}
