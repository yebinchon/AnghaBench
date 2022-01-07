
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct smu_cpu_power_sensor {scalar_t__ amps; scalar_t__ volts; } ;


 int kfree (struct smu_cpu_power_sensor*) ;
 struct smu_cpu_power_sensor* to_smu_cpu_power (struct wf_sensor*) ;
 int wf_put_sensor (scalar_t__) ;

__attribute__((used)) static void smu_cpu_power_release(struct wf_sensor *sr)
{
 struct smu_cpu_power_sensor *pow = to_smu_cpu_power(sr);

 if (pow->volts)
  wf_put_sensor(pow->volts);
 if (pow->amps)
  wf_put_sensor(pow->amps);
 kfree(pow);
}
