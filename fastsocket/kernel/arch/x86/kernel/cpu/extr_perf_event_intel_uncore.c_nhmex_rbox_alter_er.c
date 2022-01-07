
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event_extra {int idx; int config; int reg; } ;
struct hw_perf_event {int config; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {TYPE_1__* pmu; } ;
struct TYPE_2__ {int pmu_idx; } ;


 int NHMEX_R_MSR_PORTN_IPERF_CFG0 (int) ;
 int NHMEX_R_MSR_PORTN_IPERF_CFG1 (int) ;
 int NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG (int) ;
 int NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG (int) ;
 int NHMEX_R_PMON_CTL_EV_SEL_SHIFT ;

void nhmex_rbox_alter_er(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct hw_perf_event_extra *reg1 = &hwc->extra_reg;
 int port;


 if (reg1->idx % 2) {
  reg1->idx--;
  hwc->config -= 1 << NHMEX_R_PMON_CTL_EV_SEL_SHIFT;
 } else {
  reg1->idx++;
  hwc->config += 1 << NHMEX_R_PMON_CTL_EV_SEL_SHIFT;
 }


 port = reg1->idx / 6 + box->pmu->pmu_idx * 4;
 switch (reg1->idx % 6) {
 case 0:
  reg1->reg = NHMEX_R_MSR_PORTN_IPERF_CFG0(port);
  break;
 case 1:
  reg1->reg = NHMEX_R_MSR_PORTN_IPERF_CFG1(port);
  break;
 case 2:

  reg1->config >>= 8;
  break;
 case 3:

  reg1->config <<= 8;
  break;
 case 4:
  reg1->reg = NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG(port);
  break;
 case 5:
  reg1->reg = NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG(port);
  break;
 };
}
