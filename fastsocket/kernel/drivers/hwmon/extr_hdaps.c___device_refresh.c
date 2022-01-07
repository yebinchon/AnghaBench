
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STATE_FRESH ;
 scalar_t__ inb (int) ;
 int outb (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void __device_refresh(void)
{
 udelay(200);
 if (inb(0x1604) != STATE_FRESH) {
  outb(0x11, 0x1610);
  outb(0x01, 0x161f);
 }
}
