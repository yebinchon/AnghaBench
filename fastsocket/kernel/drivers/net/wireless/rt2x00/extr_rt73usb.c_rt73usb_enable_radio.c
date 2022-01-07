
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int EIO ;
 scalar_t__ rt73usb_init_bbp (struct rt2x00_dev*) ;
 scalar_t__ rt73usb_init_registers (struct rt2x00_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rt73usb_enable_radio(struct rt2x00_dev *rt2x00dev)
{



 if (unlikely(rt73usb_init_registers(rt2x00dev) ||
       rt73usb_init_bbp(rt2x00dev)))
  return -EIO;

 return 0;
}
