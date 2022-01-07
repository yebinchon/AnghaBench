
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
struct acpi_cpufreq_data {int dummy; } ;


 unsigned int extract_freq (int ,struct acpi_cpufreq_data*) ;
 int get_cur_val (struct cpumask const*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int check_freqs(const struct cpumask *mask, unsigned int freq,
    struct acpi_cpufreq_data *data)
{
 unsigned int cur_freq;
 unsigned int i;

 for (i = 0; i < 100; i++) {
  cur_freq = extract_freq(get_cur_val(mask), data);
  if (cur_freq == freq)
   return 1;
  udelay(10);
 }
 return 0;
}
