
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SPITZ_GPIO_USB_HOST ;
 int gpio_free (int ) ;

__attribute__((used)) static void spitz_ohci_exit(struct device *dev)
{
 gpio_free(SPITZ_GPIO_USB_HOST);
}
