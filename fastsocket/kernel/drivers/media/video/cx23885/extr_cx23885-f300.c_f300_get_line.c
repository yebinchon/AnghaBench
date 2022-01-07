
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int cx23885_gpio_enable (struct cx23885_dev*,int ,int ) ;
 int cx23885_gpio_get (struct cx23885_dev*,int ) ;

__attribute__((used)) static u8 f300_get_line(struct cx23885_dev *dev, u32 line)
{
 cx23885_gpio_enable(dev, line, 0);

 return cx23885_gpio_get(dev, line);
}
