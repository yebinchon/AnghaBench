
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IOMUX_TO_GPIO (int ) ;
 int MX31_PIN_CSI_D5 ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int pcm037_camera_power(struct device *dev, int on)
{

 gpio_set_value(IOMUX_TO_GPIO(MX31_PIN_CSI_D5), !on);
 return 0;
}
