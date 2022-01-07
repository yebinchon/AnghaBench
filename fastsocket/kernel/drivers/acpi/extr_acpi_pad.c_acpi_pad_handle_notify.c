
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int acpi_handle ;


 int acpi_pad_idle_cpus (int) ;
 int acpi_pad_idle_cpus_num () ;
 int acpi_pad_ost (int ,int,int ) ;
 scalar_t__ acpi_pad_pur (int ,int*) ;
 int isolated_cpus_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void acpi_pad_handle_notify(acpi_handle handle)
{
 int num_cpus = 0;
 int ret;
 uint32_t idle_cpus;

 mutex_lock(&isolated_cpus_lock);
 if (acpi_pad_pur(handle, &num_cpus)) {
  mutex_unlock(&isolated_cpus_lock);
  return;
 }
 ret = acpi_pad_idle_cpus(num_cpus);
 idle_cpus = acpi_pad_idle_cpus_num();
 if (!ret)
  acpi_pad_ost(handle, 0, idle_cpus);
 else
  acpi_pad_ost(handle, 1, 0);
 mutex_unlock(&isolated_cpus_lock);
}
