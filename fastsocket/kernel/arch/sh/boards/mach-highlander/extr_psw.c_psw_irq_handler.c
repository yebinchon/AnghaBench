
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct push_switch_platform_info {int bit; } ;
struct push_switch {int state; int debounce; } ;
struct TYPE_2__ {struct push_switch_platform_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int PA_DBSW ;
 unsigned int ctrl_inw (int ) ;
 int ctrl_outw (unsigned int,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct push_switch* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static irqreturn_t psw_irq_handler(int irq, void *arg)
{
 struct platform_device *pdev = arg;
 struct push_switch *psw = platform_get_drvdata(pdev);
 struct push_switch_platform_info *psw_info = pdev->dev.platform_data;
 unsigned int l, mask;
 int ret = 0;

 l = ctrl_inw(PA_DBSW);


 if (psw->state) {
  ret = 1;
  goto out;
 }

 mask = l & 0x70;

 if (mask & (1 << psw_info->bit)) {
  psw->state = !!(mask & (1 << psw_info->bit));
  if (psw->state)
   mod_timer(&psw->debounce, jiffies + 50);

  ret = 1;
 }

out:

 l |= (0x7 << 12);
 ctrl_outw(l, PA_DBSW);

 return IRQ_RETVAL(ret);
}
