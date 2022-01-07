
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int bit_width; int port; } ;
struct TYPE_6__ {int reg; } ;
struct TYPE_8__ {TYPE_2__ io; TYPE_1__ msr; } ;
struct drv_cmd {int type; int val; struct cpumask const* mask; TYPE_3__ addr; } ;
struct cpumask {int dummy; } ;
struct TYPE_9__ {int bit_width; int address; } ;
struct acpi_processor_performance {TYPE_4__ control_register; } ;
struct TYPE_10__ {int cpu_feature; struct acpi_processor_performance* acpi_data; } ;


 int MSR_IA32_PERF_STATUS ;


 int cpumask_empty (struct cpumask const*) ;
 int cpumask_first (struct cpumask const*) ;
 int dprintk (char*,int ) ;
 int drv_data ;
 int drv_read (struct drv_cmd*) ;
 TYPE_5__* per_cpu (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static u32 get_cur_val(const struct cpumask *mask)
{
 struct acpi_processor_performance *perf;
 struct drv_cmd cmd;

 if (unlikely(cpumask_empty(mask)))
  return 0;

 switch (per_cpu(drv_data, cpumask_first(mask))->cpu_feature) {
 case 129:
  cmd.type = 129;
  cmd.addr.msr.reg = MSR_IA32_PERF_STATUS;
  break;
 case 128:
  cmd.type = 128;
  perf = per_cpu(drv_data, cpumask_first(mask))->acpi_data;
  cmd.addr.io.port = perf->control_register.address;
  cmd.addr.io.bit_width = perf->control_register.bit_width;
  break;
 default:
  return 0;
 }

 cmd.mask = mask;
 drv_read(&cmd);

 dprintk("get_cur_val = %u\n", cmd.val);

 return cmd.val;
}
