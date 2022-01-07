
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ioport1; int ioport2; } ;


 int ITERATIONS_LONG ;
 int inb_p (int ) ;
 int outb (int,int ) ;
 TYPE_1__ sonypi_device ;
 int wait_on_command (int ,int,int ) ;

__attribute__((used)) static u8 sonypi_call2(u8 dev, u8 fn)
{
 u8 v1;

 wait_on_command(0, inb_p(sonypi_device.ioport2) & 2, ITERATIONS_LONG);
 outb(dev, sonypi_device.ioport2);
 wait_on_command(0, inb_p(sonypi_device.ioport2) & 2, ITERATIONS_LONG);
 outb(fn, sonypi_device.ioport1);
 v1 = inb_p(sonypi_device.ioport1);
 return v1;
}
