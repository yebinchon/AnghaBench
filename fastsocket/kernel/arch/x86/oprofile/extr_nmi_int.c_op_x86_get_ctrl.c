
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct op_x86_model_spec {int event_mask; } ;
struct op_counter_config {int unit_mask; int extra; scalar_t__ kernel; scalar_t__ user; int event; } ;


 int ARCH_PERFMON_EVENTSEL_CMASK ;
 int ARCH_PERFMON_EVENTSEL_EDGE ;
 int ARCH_PERFMON_EVENTSEL_INT ;
 int ARCH_PERFMON_EVENTSEL_INV ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;

u64 op_x86_get_ctrl(struct op_x86_model_spec const *model,
      struct op_counter_config *counter_config)
{
 u64 val = 0;
 u16 event = (u16)counter_config->event;

 val |= ARCH_PERFMON_EVENTSEL_INT;
 val |= counter_config->user ? ARCH_PERFMON_EVENTSEL_USR : 0;
 val |= counter_config->kernel ? ARCH_PERFMON_EVENTSEL_OS : 0;
 val |= (counter_config->unit_mask & 0xFF) << 8;
 counter_config->extra &= (ARCH_PERFMON_EVENTSEL_INV |
      ARCH_PERFMON_EVENTSEL_EDGE |
      ARCH_PERFMON_EVENTSEL_CMASK);
 val |= counter_config->extra;
 event &= model->event_mask ? model->event_mask : 0xFF;
 val |= event & 0xFF;
 val |= (event & 0x0F00) << 24;

 return val;
}
