
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_processor_performance {int dummy; } ;
struct acpi_processor {TYPE_1__* performance; } ;
struct TYPE_2__ {int states; } ;


 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct acpi_processor* per_cpu (int ,unsigned int) ;
 int performance_mutex ;
 int processors ;

void
acpi_processor_unregister_performance(struct acpi_processor_performance
          *performance, unsigned int cpu)
{
 struct acpi_processor *pr;

 mutex_lock(&performance_mutex);

 pr = per_cpu(processors, cpu);
 if (!pr) {
  mutex_unlock(&performance_mutex);
  return;
 }

 if (pr->performance)
  kfree(pr->performance->states);
 pr->performance = ((void*)0);

 mutex_unlock(&performance_mutex);

 return;
}
