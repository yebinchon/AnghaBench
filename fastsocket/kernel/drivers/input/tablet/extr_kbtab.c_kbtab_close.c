
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbtab {int irq; } ;
struct input_dev {int dummy; } ;


 struct kbtab* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void kbtab_close(struct input_dev *dev)
{
 struct kbtab *kbtab = input_get_drvdata(dev);

 usb_kill_urb(kbtab->irq);
}
