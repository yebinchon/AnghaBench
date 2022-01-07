
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LSR ;
 scalar_t__ TXR ;
 int XMTRDY ;
 int cpu_relax () ;
 scalar_t__ early_serial_base ;
 int inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static int early_serial_putc(unsigned char ch)
{
 unsigned timeout = 0xffff;

 while ((inb(early_serial_base + LSR) & XMTRDY) == 0 && --timeout)
  cpu_relax();
 outb(ch, early_serial_base + TXR);
 return timeout ? 0 : -1;
}
