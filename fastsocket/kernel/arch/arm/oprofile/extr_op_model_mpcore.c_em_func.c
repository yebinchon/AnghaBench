
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_function_data {int (* fn ) () ;int ret; } ;


 int stub1 () ;

__attribute__((used)) static void em_func(void *data)
{
 struct em_function_data *d = data;
 int ret = d->fn();
 if (ret)
  d->ret = ret;
}
