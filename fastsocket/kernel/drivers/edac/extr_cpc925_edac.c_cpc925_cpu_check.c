
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edac_device_ctl_info {int ctl_name; struct cpc925_dev_info* pvt_info; } ;
struct cpc925_dev_info {scalar_t__ vbase; } ;


 int CPU_EXCP_DETECTED ;
 int KERN_INFO ;
 scalar_t__ REG_APIEXCP_OFFSET ;
 scalar_t__ REG_APIMASK_OFFSET ;
 int __raw_readl (scalar_t__) ;
 int cpc925_printk (int ,char*,...) ;
 int edac_device_handle_ue (struct edac_device_ctl_info*,int ,int ,int ) ;

__attribute__((used)) static void cpc925_cpu_check(struct edac_device_ctl_info *edac_dev)
{
 struct cpc925_dev_info *dev_info = edac_dev->pvt_info;
 u32 apiexcp;
 u32 apimask;


 apiexcp = __raw_readl(dev_info->vbase + REG_APIEXCP_OFFSET);
 if ((apiexcp & CPU_EXCP_DETECTED) == 0)
  return;

 apimask = __raw_readl(dev_info->vbase + REG_APIMASK_OFFSET);
 cpc925_printk(KERN_INFO, "Processor Interface Fault\n"
     "Processor Interface register dump:\n");
 cpc925_printk(KERN_INFO, "APIMASK		0x%08x\n", apimask);
 cpc925_printk(KERN_INFO, "APIEXCP		0x%08x\n", apiexcp);

 edac_device_handle_ue(edac_dev, 0, 0, edac_dev->ctl_name);
}
