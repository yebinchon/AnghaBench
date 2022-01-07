
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int inb (int) ;
 int io_delay () ;
 int outb (int,int) ;

__attribute__((used)) static void beep(unsigned int hz)
{
 u8 enable;

 if (!hz) {
  enable = 0x00;
 } else {
  u16 div = 1193181/hz;

  outb(0xb6, 0x43);
  io_delay();
  outb(div, 0x42);
  io_delay();
  outb(div >> 8, 0x42);
  io_delay();

  enable = 0x03;
 }
 inb(0x61);
 io_delay();
 outb(enable, 0x61);
 io_delay();
}
