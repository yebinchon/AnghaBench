
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct push_switch_platform_info {int irq_flags; scalar_t__ name; int irq_handler; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct push_switch {struct platform_device* pdev; TYPE_1__ debounce; int work; } ;
struct TYPE_5__ {struct push_switch_platform_info* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;


 int BUG_ON (int) ;
 scalar_t__ DRV_NAME ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IRQF_DISABLED ;
 int dev_attr_switch ;
 int dev_err (TYPE_2__*,char*) ;
 int device_create_file (TYPE_2__*,int *) ;
 int free_irq (int,struct platform_device*) ;
 int init_timer (TYPE_1__*) ;
 int kfree (struct push_switch*) ;
 struct push_switch* kzalloc (int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct push_switch*) ;
 int request_irq (int,int ,int,scalar_t__,struct platform_device*) ;
 int switch_timer ;
 int switch_work_handler ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int switch_drv_probe(struct platform_device *pdev)
{
 struct push_switch_platform_info *psw_info;
 struct push_switch *psw;
 int ret, irq;

 psw = kzalloc(sizeof(struct push_switch), GFP_KERNEL);
 if (unlikely(!psw))
  return -ENOMEM;

 irq = platform_get_irq(pdev, 0);
 if (unlikely(irq < 0)) {
  ret = -ENODEV;
  goto err;
 }

 psw_info = pdev->dev.platform_data;
 BUG_ON(!psw_info);

 ret = request_irq(irq, psw_info->irq_handler,
     IRQF_DISABLED | psw_info->irq_flags,
     psw_info->name ? psw_info->name : DRV_NAME, pdev);
 if (unlikely(ret < 0))
  goto err;

 if (psw_info->name) {
  ret = device_create_file(&pdev->dev, &dev_attr_switch);
  if (unlikely(ret)) {
   dev_err(&pdev->dev, "Failed creating device attrs\n");
   ret = -EINVAL;
   goto err_irq;
  }
 }

 INIT_WORK(&psw->work, switch_work_handler);
 init_timer(&psw->debounce);

 psw->debounce.function = switch_timer;
 psw->debounce.data = (unsigned long)psw;


 psw->pdev = pdev;

 platform_set_drvdata(pdev, psw);

 return 0;

err_irq:
 free_irq(irq, pdev);
err:
 kfree(psw);
 return ret;
}
