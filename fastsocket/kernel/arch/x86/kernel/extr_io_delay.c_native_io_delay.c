
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_delay_type ;
 int udelay (int) ;

void native_io_delay(void)
{
 switch (io_delay_type) {
 default:
 case 131:
  asm volatile ("outb %al, $0x80");
  break;
 case 130:
  asm volatile ("outb %al, $0xed");
  break;
 case 128:







  udelay(2);
 case 129:
  break;
 }
}
