
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct driver_data {scalar_t__ mmio; int port; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 scalar_t__ HOST_CTL ;
 int HOST_IRQ_EN ;
 int dev_err (int *,char*) ;
 int hba_setup (struct driver_data*) ;
 scalar_t__ mtip_hba_reset (struct driver_data*) ;
 int mtip_init_port (int ) ;
 int mtip_start_port (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mtip_hw_resume(struct driver_data *dd)
{

 hba_setup(dd);


 if (mtip_hba_reset(dd) != 0) {
  dev_err(&dd->pdev->dev,
   "Unable to reset the HBA\n");
  return -EFAULT;
 }





 mtip_init_port(dd->port);
 mtip_start_port(dd->port);


 writel(readl(dd->mmio + HOST_CTL) | HOST_IRQ_EN,
   dd->mmio + HOST_CTL);

 return 0;
}
