
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int irq; int* irq_masks; int dev; int irq_work; int irq_wq; int irq_lock; } ;


 int ARRAY_SIZE (int*) ;
 int ESRCH ;
 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ WM831X_INTERRUPT_STATUS_1_MASK ;
 scalar_t__ WM831X_SYSTEM_INTERRUPTS_MASK ;
 int create_singlethread_workqueue (char*) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int mutex_init (int *) ;
 int request_irq (int,int ,int,char*,struct wm831x*) ;
 int wm831x_cpu_irq ;
 int wm831x_irq_worker ;
 int wm831x_reg_write (struct wm831x*,scalar_t__,int) ;

int wm831x_irq_init(struct wm831x *wm831x, int irq)
{
 int i, ret;

 mutex_init(&wm831x->irq_lock);

 if (!irq) {
  dev_warn(wm831x->dev,
    "No interrupt specified - functionality limited\n");
  return 0;
 }


 wm831x->irq_wq = create_singlethread_workqueue("wm831x-irq");
 if (!wm831x->irq_wq) {
  dev_err(wm831x->dev, "Failed to allocate IRQ worker\n");
  return -ESRCH;
 }

 wm831x->irq = irq;
 INIT_WORK(&wm831x->irq_work, wm831x_irq_worker);


 for (i = 0; i < ARRAY_SIZE(wm831x->irq_masks); i++) {
  wm831x->irq_masks[i] = 0xffff;
  wm831x_reg_write(wm831x, WM831X_INTERRUPT_STATUS_1_MASK + i,
     0xffff);
 }


 wm831x_reg_write(wm831x, WM831X_SYSTEM_INTERRUPTS_MASK, 0);
 ret = request_irq(irq, wm831x_cpu_irq, IRQF_TRIGGER_LOW | IRQF_SHARED,
     "wm831x", wm831x);
 if (ret != 0) {
  dev_err(wm831x->dev, "Failed to request IRQ %d: %d\n",
   irq, ret);
  return ret;
 }

 return 0;
}
