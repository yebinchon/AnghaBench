
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 scalar_t__ PORT_IN ;
 scalar_t__ PORT_OUT ;
 int dev_dbg (int *,char*,int,int,...) ;
 int inb_p (scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 scalar_t__ pc8736x_gpio_base ;
 int* pc8736x_gpio_shadow ;
 TYPE_1__* pdev ;
 scalar_t__* port_offset ;

__attribute__((used)) static void pc8736x_gpio_set(unsigned minor, int val)
{
 int port, bit, curval;

 minor &= 0x1f;
 port = minor >> 3;
 bit = minor & 7;
 curval = inb_p(pc8736x_gpio_base + port_offset[port] + PORT_OUT);

 dev_dbg(&pdev->dev, "addr:%x cur:%x bit-pos:%d cur-bit:%x + new:%d -> bit-new:%d\n",
  pc8736x_gpio_base + port_offset[port] + PORT_OUT,
  curval, bit, (curval & ~(1 << bit)), val, (val << bit));

 val = (curval & ~(1 << bit)) | (val << bit);

 dev_dbg(&pdev->dev, "gpio_set(minor:%d port:%d bit:%d)"
  " %2x -> %2x\n", minor, port, bit, curval, val);

 outb_p(val, pc8736x_gpio_base + port_offset[port] + PORT_OUT);

 curval = inb_p(pc8736x_gpio_base + port_offset[port] + PORT_OUT);
 val = inb_p(pc8736x_gpio_base + port_offset[port] + PORT_IN);

 dev_dbg(&pdev->dev, "wrote %x, read: %x\n", curval, val);
 pc8736x_gpio_shadow[port] = val;
}
