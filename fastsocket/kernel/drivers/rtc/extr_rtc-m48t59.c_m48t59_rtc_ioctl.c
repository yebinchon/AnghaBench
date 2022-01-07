
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct m48t59_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t59_private {int lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;


 int ENOIOCTLCMD ;
 int M48T59_INTR ;
 int M48T59_INTR_AFE ;
 int M48T59_WRITE (int,int ) ;


 struct m48t59_private* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int m48t59_rtc_ioctl(struct device *dev, unsigned int cmd,
   unsigned long arg)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct m48t59_plat_data *pdata = pdev->dev.platform_data;
 struct m48t59_private *m48t59 = platform_get_drvdata(pdev);
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&m48t59->lock, flags);
 switch (cmd) {
 case 129:
  M48T59_WRITE(0x00, M48T59_INTR);
  break;
 case 128:
  M48T59_WRITE(M48T59_INTR_AFE, M48T59_INTR);
  break;
 default:
  ret = -ENOIOCTLCMD;
  break;
 }
 spin_unlock_irqrestore(&m48t59->lock, flags);

 return ret;
}
