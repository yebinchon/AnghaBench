
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_lli {int ctllo; int ctlhi; int llp; int dar; int sar; } ;
struct dw_dma_chan {int chan; } ;


 int KERN_CRIT ;
 int chan2dev (int *) ;
 int dev_printk (int ,int ,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dwc_dump_lli(struct dw_dma_chan *dwc, struct dw_lli *lli)
{
 dev_printk(KERN_CRIT, chan2dev(&dwc->chan),
   "  desc: s0x%x d0x%x l0x%x c0x%x:%x\n",
   lli->sar, lli->dar, lli->llp,
   lli->ctlhi, lli->ctllo);
}
