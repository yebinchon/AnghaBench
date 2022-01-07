
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ips_driver {int core_power_limit; int mch_power_limit; int cpu_turbo_enabled; int gpu_turbo_enabled; int mcp_temp_limit; int mcp_power_limit; TYPE_1__* dev; int turbo_status_lock; scalar_t__ gpu_busy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SEC_ACK ;
 int STS_GPL_MASK ;
 int STS_GPL_SHIFT ;
 int STS_GTD_DIS ;
 int STS_NVV ;
 int STS_PCPL_MASK ;
 int STS_PCPL_SHIFT ;
 int STS_PCTD_DIS ;
 int STS_PPL_MASK ;
 int STS_PPL_SHIFT ;
 int STS_PTL_MASK ;
 int STS_PTL_SHIFT ;
 int THM_SEC ;
 int THM_STS ;
 int THM_TC1 ;
 int THM_TES ;
 int THM_TSES ;
 int dev_info (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int thm_readb (int ) ;
 int thm_readl (int ) ;
 int thm_writeb (int ,int) ;
 int verify_limits (struct ips_driver*) ;

__attribute__((used)) static irqreturn_t ips_irq_handler(int irq, void *arg)
{
 struct ips_driver *ips = arg;
 u8 tses = thm_readb(THM_TSES);
 u8 tes = thm_readb(THM_TES);

 if (!tses && !tes)
  return IRQ_NONE;

 dev_info(&ips->dev->dev, "TSES: 0x%02x\n", tses);
 dev_info(&ips->dev->dev, "TES: 0x%02x\n", tes);


 if (tes & 1) {
  u32 sts, tc1;

  sts = thm_readl(THM_STS);
  tc1 = thm_readl(THM_TC1);

  if (sts & STS_NVV) {
   spin_lock(&ips->turbo_status_lock);
   ips->core_power_limit = (sts & STS_PCPL_MASK) >>
    STS_PCPL_SHIFT;
   ips->mch_power_limit = (sts & STS_GPL_MASK) >>
    STS_GPL_SHIFT;

   ips->cpu_turbo_enabled = !(sts & STS_PCTD_DIS);




   ips->cpu_turbo_enabled = 0;
   if (ips->gpu_busy)
    ips->gpu_turbo_enabled = !(sts & STS_GTD_DIS);
   ips->mcp_temp_limit = (sts & STS_PTL_MASK) >>
    STS_PTL_SHIFT;
   ips->mcp_power_limit = (tc1 & STS_PPL_MASK) >>
    STS_PPL_SHIFT;
   verify_limits(ips);
   spin_unlock(&ips->turbo_status_lock);

   thm_writeb(THM_SEC, SEC_ACK);
  }
  thm_writeb(THM_TES, tes);
 }


 if (tses) {
  dev_warn(&ips->dev->dev,
    "thermal trip occurred, tses: 0x%04x\n", tses);
  thm_writeb(THM_TSES, tses);
 }

 return IRQ_HANDLED;
}
