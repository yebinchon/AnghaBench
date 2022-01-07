
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm109_dev {int shutdown; int urb_irq; int urb_ctl; } ;


 int cm109_toggle_buzzer_sync (struct cm109_dev*,int ) ;
 int smp_wmb () ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void cm109_stop_traffic(struct cm109_dev *dev)
{
 dev->shutdown = 1;



 smp_wmb();

 usb_kill_urb(dev->urb_ctl);
 usb_kill_urb(dev->urb_irq);

 cm109_toggle_buzzer_sync(dev, 0);

 dev->shutdown = 0;
 smp_wmb();
}
