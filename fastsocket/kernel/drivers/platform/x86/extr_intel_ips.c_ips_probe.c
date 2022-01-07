
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int dev; } ;
struct ips_driver {int second_cpu; int mcp_power_limit; int core_power_limit; int poll_turbo_status; int gpu_turbo_enabled; int orig_turbo_limit; int cpu_turbo_enabled; int mcp_temp_limit; int regmap; struct pci_dev* dev; int adjust; int monitor; void* mgta_val; void* pta_val; void* cta_val; int turbo_status_lock; int limits; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int HTS2_PRST_RUNNING ;
 int HTS2_PRST_SHIFT ;
 int HTS_NVV ;
 int HTS_PCPL_SHIFT ;
 int HTS_PTL_SHIFT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_INFO ;
 int PLATFORM_TDP ;
 int PSP_PBRT ;
 int TEN_UPDATE_EN ;
 int THM_CTA ;
 int THM_HTS ;
 int THM_HTSHI ;
 int THM_MGTA ;
 int THM_PSC ;
 int THM_PTA ;
 int THM_TEN ;
 int THM_TRC ;
 int THM_TSE ;
 int THM_TSPIEN ;
 int TRC_CORE1_EN ;
 int TRC_CORE2_EN ;
 int TRC_CORE_PWR ;
 int TRC_MCH_EN ;
 scalar_t__ TSE_EN ;
 int TSPIEN_AUX2_LOHI ;
 int TSPIEN_AUX_LOHI ;
 int TSPIEN_CRIT_LOHI ;
 int TSPIEN_HOT_LOHI ;
 int TURBO_POWER_CURRENT_LIMIT ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 int free_irq (int ,struct ips_driver*) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int ips_adjust ;
 int ips_debugfs_init (struct ips_driver*) ;
 int ips_detect_cpu (struct ips_driver*) ;
 int ips_disable_cpu_turbo (struct ips_driver*) ;
 int ips_get_i915_syms (struct ips_driver*) ;
 int ips_irq_handler ;
 int ips_monitor ;
 int kfree (struct ips_driver*) ;
 int kthread_create (int ,struct ips_driver*,char*) ;
 int kthread_run (int ,struct ips_driver*,char*) ;
 int kthread_stop (int ) ;
 struct ips_driver* kzalloc (int,int ) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct ips_driver*) ;
 int rdmsrl (int ,int) ;
 int request_irq (int ,int ,int ,char*,struct ips_driver*) ;
 int spin_lock_init (int *) ;
 scalar_t__ thm_readb (int ) ;
 int thm_readl (int ) ;
 void* thm_readw (int ) ;
 int thm_writeb (int ,int) ;
 int thm_writel (int ,int) ;
 int thm_writew (int ,int) ;
 int update_turbo_limits (struct ips_driver*) ;

__attribute__((used)) static int ips_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 u64 platform_info;
 struct ips_driver *ips;
 u32 hts;
 int ret = 0;
 u16 htshi, trc, trc_required_mask;
 u8 tse;

 ips = kzalloc(sizeof(struct ips_driver), GFP_KERNEL);
 if (!ips)
  return -ENOMEM;

 pci_set_drvdata(dev, ips);
 ips->dev = dev;

 ips->limits = ips_detect_cpu(ips);
 if (!ips->limits) {
  dev_info(&dev->dev, "IPS not supported on this CPU\n");
  ret = -ENXIO;
  goto error_free;
 }

 spin_lock_init(&ips->turbo_status_lock);

 ret = pci_enable_device(dev);
 if (ret) {
  dev_err(&dev->dev, "can't enable PCI device, aborting\n");
  goto error_free;
 }

 if (!pci_resource_start(dev, 0)) {
  dev_err(&dev->dev, "TBAR not assigned, aborting\n");
  ret = -ENXIO;
  goto error_free;
 }

 ret = pci_request_regions(dev, "ips thermal sensor");
 if (ret) {
  dev_err(&dev->dev, "thermal resource busy, aborting\n");
  goto error_free;
 }


 ips->regmap = ioremap(pci_resource_start(dev, 0),
         pci_resource_len(dev, 0));
 if (!ips->regmap) {
  dev_err(&dev->dev, "failed to map thermal regs, aborting\n");
  ret = -EBUSY;
  goto error_release;
 }

 tse = thm_readb(THM_TSE);
 if (tse != TSE_EN) {
  dev_err(&dev->dev, "thermal device not enabled (0x%02x), aborting\n", tse);
  ret = -ENXIO;
  goto error_unmap;
 }

 trc = thm_readw(THM_TRC);
 trc_required_mask = TRC_CORE1_EN | TRC_CORE_PWR | TRC_MCH_EN;
 if ((trc & trc_required_mask) != trc_required_mask) {
  dev_err(&dev->dev, "thermal reporting for required devices not enabled, aborting\n");
  ret = -ENXIO;
  goto error_unmap;
 }

 if (trc & TRC_CORE2_EN)
  ips->second_cpu = 1;

 update_turbo_limits(ips);
 dev_dbg(&dev->dev, "max cpu power clamp: %dW\n",
  ips->mcp_power_limit / 10);
 dev_dbg(&dev->dev, "max core power clamp: %dW\n",
  ips->core_power_limit / 10);

 if (thm_readl(THM_PSC) & PSP_PBRT)
  ips->poll_turbo_status = 1;

 if (!ips_get_i915_syms(ips)) {
  dev_err(&dev->dev, "failed to get i915 symbols, graphics turbo disabled\n");
  ips->gpu_turbo_enabled = 0;
 } else {
  dev_dbg(&dev->dev, "graphics turbo enabled\n");
  ips->gpu_turbo_enabled = 1;
 }





 rdmsrl(PLATFORM_INFO, platform_info);
 if (!(platform_info & PLATFORM_TDP)) {
  dev_err(&dev->dev, "platform indicates TDP override unavailable, aborting\n");
  ret = -ENODEV;
  goto error_unmap;
 }





 pci_disable_msi(dev);
 ret = request_irq(dev->irq, ips_irq_handler, IRQF_SHARED, "ips",
     ips);
 if (ret) {
  dev_err(&dev->dev, "request irq failed, aborting\n");
  goto error_unmap;
 }


 thm_writeb(THM_TSPIEN, TSPIEN_AUX2_LOHI | TSPIEN_CRIT_LOHI |
     TSPIEN_HOT_LOHI | TSPIEN_AUX_LOHI);
 thm_writeb(THM_TEN, TEN_UPDATE_EN);


 ips->cta_val = thm_readw(THM_CTA);
 ips->pta_val = thm_readw(THM_PTA);
 ips->mgta_val = thm_readw(THM_MGTA);


 rdmsrl(TURBO_POWER_CURRENT_LIMIT, ips->orig_turbo_limit);

 ips_disable_cpu_turbo(ips);
 ips->cpu_turbo_enabled = 0;


 ips->adjust = kthread_create(ips_adjust, ips, "ips-adjust");
 if (IS_ERR(ips->adjust)) {
  dev_err(&dev->dev,
   "failed to create thermal adjust thread, aborting\n");
  ret = -ENOMEM;
  goto error_free_irq;

 }





 ips->monitor = kthread_run(ips_monitor, ips, "ips-monitor");
 if (IS_ERR(ips->monitor)) {
  dev_err(&dev->dev,
   "failed to create thermal monitor thread, aborting\n");
  ret = -ENOMEM;
  goto error_thread_cleanup;
 }

 hts = (ips->core_power_limit << HTS_PCPL_SHIFT) |
  (ips->mcp_temp_limit << HTS_PTL_SHIFT) | HTS_NVV;
 htshi = HTS2_PRST_RUNNING << HTS2_PRST_SHIFT;

 thm_writew(THM_HTSHI, htshi);
 thm_writel(THM_HTS, hts);

 ips_debugfs_init(ips);

 dev_info(&dev->dev, "IPS driver initialized, MCP temp limit %d\n",
   ips->mcp_temp_limit);
 return ret;

error_thread_cleanup:
 kthread_stop(ips->adjust);
error_free_irq:
 free_irq(ips->dev->irq, ips);
error_unmap:
 iounmap(ips->regmap);
error_release:
 pci_release_regions(dev);
error_free:
 kfree(ips);
 return ret;
}
