
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dev; } ;
struct ips_driver {int orig_turbo_limit; int regmap; scalar_t__ monitor; scalar_t__ adjust; TYPE_1__* dev; scalar_t__ gpu_turbo_disable; scalar_t__ gpu_busy; scalar_t__ gpu_lower; scalar_t__ gpu_raise; scalar_t__ read_mch_val; } ;
struct TYPE_2__ {int irq; } ;


 int TURBO_POWER_CURRENT_LIMIT ;
 int TURBO_TDC_OVR_EN ;
 int TURBO_TDP_OVR_EN ;
 int dev_dbg (int *,char*) ;
 int free_irq (int ,struct ips_driver*) ;
 int i915_gpu_busy ;
 int i915_gpu_lower ;
 int i915_gpu_raise ;
 int i915_gpu_turbo_disable ;
 int i915_read_mch_val ;
 int iounmap (int ) ;
 int ips_debugfs_cleanup (struct ips_driver*) ;
 int kfree (struct ips_driver*) ;
 int kthread_stop (scalar_t__) ;
 struct ips_driver* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int rdmsrl (int ,int) ;
 int symbol_put (int ) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void ips_remove(struct pci_dev *dev)
{
 struct ips_driver *ips = pci_get_drvdata(dev);
 u64 turbo_override;

 if (!ips)
  return;

 ips_debugfs_cleanup(ips);


 if (ips->read_mch_val)
  symbol_put(i915_read_mch_val);
 if (ips->gpu_raise)
  symbol_put(i915_gpu_raise);
 if (ips->gpu_lower)
  symbol_put(i915_gpu_lower);
 if (ips->gpu_busy)
  symbol_put(i915_gpu_busy);
 if (ips->gpu_turbo_disable)
  symbol_put(i915_gpu_turbo_disable);

 rdmsrl(TURBO_POWER_CURRENT_LIMIT, turbo_override);
 turbo_override &= ~(TURBO_TDC_OVR_EN | TURBO_TDP_OVR_EN);
 wrmsrl(TURBO_POWER_CURRENT_LIMIT, turbo_override);
 wrmsrl(TURBO_POWER_CURRENT_LIMIT, ips->orig_turbo_limit);

 free_irq(ips->dev->irq, ips);
 if (ips->adjust)
  kthread_stop(ips->adjust);
 if (ips->monitor)
  kthread_stop(ips->monitor);
 iounmap(ips->regmap);
 pci_release_regions(dev);
 kfree(ips);
 dev_dbg(&dev->dev, "IPS driver removed\n");
}
