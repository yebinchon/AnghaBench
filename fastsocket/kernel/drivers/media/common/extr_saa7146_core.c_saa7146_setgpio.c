
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_dev {int dummy; } ;


 int BUG_ON (int) ;
 int GPIO_CTRL ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

void saa7146_setgpio(struct saa7146_dev *dev, int port, u32 data)
{
 u32 value = 0;

 BUG_ON(port > 3);

 value = saa7146_read(dev, GPIO_CTRL);
 value &= ~(0xff << (8*port));
 value |= (data << (8*port));
 saa7146_write(dev, GPIO_CTRL, value);
}
