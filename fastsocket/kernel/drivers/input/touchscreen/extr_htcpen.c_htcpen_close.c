
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int DEVICE_DISABLE ;
 int HTCPEN_IRQ ;
 int HTCPEN_PORT_INIT ;
 int outb_p (int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void htcpen_close(struct input_dev *dev)
{
 outb_p(DEVICE_DISABLE, HTCPEN_PORT_INIT);
 synchronize_irq(HTCPEN_IRQ);
}
