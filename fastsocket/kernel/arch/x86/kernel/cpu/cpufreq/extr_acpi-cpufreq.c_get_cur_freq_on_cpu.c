
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acpi_cpufreq_data {int resume; TYPE_1__* acpi_data; TYPE_2__* freq_table; } ;
struct TYPE_4__ {unsigned int frequency; } ;
struct TYPE_3__ {size_t state; } ;


 int cpumask_of (unsigned int) ;
 int dprintk (char*,unsigned int) ;
 int drv_data ;
 unsigned int extract_freq (int ,struct acpi_cpufreq_data*) ;
 int get_cur_val (int ) ;
 struct acpi_cpufreq_data* per_cpu (int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int get_cur_freq_on_cpu(unsigned int cpu)
{
 struct acpi_cpufreq_data *data = per_cpu(drv_data, cpu);
 unsigned int freq;
 unsigned int cached_freq;

 dprintk("get_cur_freq_on_cpu (%d)\n", cpu);

 if (unlikely(data == ((void*)0) ||
       data->acpi_data == ((void*)0) || data->freq_table == ((void*)0))) {
  return 0;
 }

 cached_freq = data->freq_table[data->acpi_data->state].frequency;
 freq = extract_freq(get_cur_val(cpumask_of(cpu)), data);
 if (freq != cached_freq) {




  data->resume = 1;
 }

 dprintk("cur freq = %u\n", freq);

 return freq;
}
