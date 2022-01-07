
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv64x60_cpu_pdata {scalar_t__* cpu_vbase; } ;
struct edac_device_ctl_info {struct mv64x60_cpu_pdata* pvt_info; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MV64x60_CPU_CAUSE_MASK ;
 scalar_t__ MV64x60_CPU_ERR_CAUSE ;
 int in_le32 (scalar_t__) ;
 int mv64x60_cpu_check (struct edac_device_ctl_info*) ;

__attribute__((used)) static irqreturn_t mv64x60_cpu_isr(int irq, void *dev_id)
{
 struct edac_device_ctl_info *edac_dev = dev_id;
 struct mv64x60_cpu_pdata *pdata = edac_dev->pvt_info;
 u32 cause;

 cause = in_le32(pdata->cpu_vbase[1] + MV64x60_CPU_ERR_CAUSE) &
     MV64x60_CPU_CAUSE_MASK;
 if (!cause)
  return IRQ_NONE;

 mv64x60_cpu_check(edac_dev);

 return IRQ_HANDLED;
}
