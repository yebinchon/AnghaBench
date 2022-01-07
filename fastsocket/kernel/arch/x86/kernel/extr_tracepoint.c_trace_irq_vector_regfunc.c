
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int irq_vector_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_trace_idt_ctr (int) ;
 int smp_call_function (int (*) (int *),int *,int ) ;
 int switch_idt (int *) ;
 int trace_irq_vector_refcount ;

void trace_irq_vector_regfunc(void)
{
 mutex_lock(&irq_vector_mutex);
 if (!trace_irq_vector_refcount) {
  set_trace_idt_ctr(1);
  smp_call_function(switch_idt, ((void*)0), 0);
  switch_idt(((void*)0));
 }
 trace_irq_vector_refcount++;
 mutex_unlock(&irq_vector_mutex);
}
