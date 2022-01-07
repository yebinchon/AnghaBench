
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edac_device_ctl_info {int ctl_name; struct cpc925_dev_info* pvt_info; } ;
struct cpc925_dev_info {scalar_t__ vbase; } ;


 int BRGCTRL_DETSERR ;
 int BRGCTRL_SECBUSRESET ;
 int ERRCTRL_CHN_FAL ;
 int ERRCTRL_RSP_ERR ;
 int HT_ERRCTRL_DETECTED ;
 int HT_LINKCTRL_DETECTED ;
 int HT_LINKERR_DETECTED ;
 int KERN_INFO ;
 scalar_t__ REG_BRGCTRL_OFFSET ;
 scalar_t__ REG_ERRCTRL_OFFSET ;
 scalar_t__ REG_LINKCTRL_OFFSET ;
 scalar_t__ REG_LINKERR_OFFSET ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int cpc925_printk (int ,char*,...) ;
 int edac_device_handle_ce (struct edac_device_ctl_info*,int ,int ,int ) ;

__attribute__((used)) static void cpc925_htlink_check(struct edac_device_ctl_info *edac_dev)
{
 struct cpc925_dev_info *dev_info = edac_dev->pvt_info;
 u32 brgctrl = __raw_readl(dev_info->vbase + REG_BRGCTRL_OFFSET);
 u32 linkctrl = __raw_readl(dev_info->vbase + REG_LINKCTRL_OFFSET);
 u32 errctrl = __raw_readl(dev_info->vbase + REG_ERRCTRL_OFFSET);
 u32 linkerr = __raw_readl(dev_info->vbase + REG_LINKERR_OFFSET);

 if (!((brgctrl & BRGCTRL_DETSERR) ||
       (linkctrl & HT_LINKCTRL_DETECTED) ||
       (errctrl & HT_ERRCTRL_DETECTED) ||
       (linkerr & HT_LINKERR_DETECTED)))
  return;

 cpc925_printk(KERN_INFO, "HT Link Fault\n"
     "HT register dump:\n");
 cpc925_printk(KERN_INFO, "Bridge Ctrl			0x%08x\n",
        brgctrl);
 cpc925_printk(KERN_INFO, "Link Config Ctrl		0x%08x\n",
        linkctrl);
 cpc925_printk(KERN_INFO, "Error Enum and Ctrl		0x%08x\n",
        errctrl);
 cpc925_printk(KERN_INFO, "Link Error			0x%08x\n",
        linkerr);


 if (brgctrl & BRGCTRL_DETSERR)
  __raw_writel(BRGCTRL_DETSERR,
    dev_info->vbase + REG_BRGCTRL_OFFSET);

 if (linkctrl & HT_LINKCTRL_DETECTED)
  __raw_writel(HT_LINKCTRL_DETECTED,
    dev_info->vbase + REG_LINKCTRL_OFFSET);


 if (errctrl & ERRCTRL_CHN_FAL)
  __raw_writel(BRGCTRL_SECBUSRESET,
    dev_info->vbase + REG_BRGCTRL_OFFSET);

 if (errctrl & ERRCTRL_RSP_ERR)
  __raw_writel(ERRCTRL_RSP_ERR,
    dev_info->vbase + REG_ERRCTRL_OFFSET);

 if (linkerr & HT_LINKERR_DETECTED)
  __raw_writel(HT_LINKERR_DETECTED,
    dev_info->vbase + REG_LINKERR_OFFSET);

 edac_device_handle_ce(edac_dev, 0, 0, edac_dev->ctl_name);
}
