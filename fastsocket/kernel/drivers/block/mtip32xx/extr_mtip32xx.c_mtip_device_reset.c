
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct driver_data {scalar_t__ mmio; int port; int pdev; } ;


 int EFAULT ;
 scalar_t__ HOST_CTL ;
 int HOST_IRQ_EN ;
 int mdelay (int) ;
 scalar_t__ mtip_check_surprise_removal (int ) ;
 scalar_t__ mtip_hba_reset (struct driver_data*) ;
 int mtip_init_port (int ) ;
 int mtip_start_port (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_device_reset(struct driver_data *dd)
{
 int rv = 0;

 if (mtip_check_surprise_removal(dd->pdev))
  return 0;

 if (mtip_hba_reset(dd) < 0)
  rv = -EFAULT;

 mdelay(1);
 mtip_init_port(dd->port);
 mtip_start_port(dd->port);


 writel(readl(dd->mmio + HOST_CTL) | HOST_IRQ_EN,
     dd->mmio + HOST_CTL);
 return rv;
}
