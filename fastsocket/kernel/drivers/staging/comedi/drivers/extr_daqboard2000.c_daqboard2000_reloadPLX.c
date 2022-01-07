
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ plx; } ;


 int DAQBOARD2000_SECRReloadHi ;
 int DAQBOARD2000_SECRReloadLo ;
 TYPE_1__* devpriv ;
 int printk (char*) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void daqboard2000_reloadPLX(struct comedi_device *dev)
{
 printk("daqboard2000_reloadPLX\n");
 writel(DAQBOARD2000_SECRReloadLo, devpriv->plx + 0x6c);
 udelay(10000);
 writel(DAQBOARD2000_SECRReloadHi, devpriv->plx + 0x6c);
 udelay(10000);
 writel(DAQBOARD2000_SECRReloadLo, devpriv->plx + 0x6c);
 udelay(10000);
}
