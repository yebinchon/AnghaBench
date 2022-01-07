
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_call_chain (int *,unsigned long,void*) ;
 int memory_isolate_chain ;

int memory_isolate_notify(unsigned long val, void *v)
{
 return atomic_notifier_call_chain(&memory_isolate_chain, val, v);
}
