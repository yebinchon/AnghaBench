
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int mc417_register_read (struct cx23885_dev*,int,int*) ;
 int mc417_register_write (struct cx23885_dev*,int,int) ;

void mc417_gpio_enable(struct cx23885_dev *dev, u32 mask, int asoutput)
{
 u32 val;


 mc417_register_read(dev, 0x9020, &val);
 if (asoutput)
  val |= (mask & 0x0000ffff);
 else
  val &= ~(mask & 0x0000ffff);

 mc417_register_write(dev, 0x9020, val);
}
