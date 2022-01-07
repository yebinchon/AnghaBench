
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int outb_p (int,unsigned int) ;

__attribute__((used)) static inline void
write_fifo(unsigned int padr, signed int adr, u_char * data, int size)
{
 int i;
 outb_p(0x1c, padr+2);
 outb_p(0x14, padr+2);
 outb_p(adr&0x7f, padr);
 for (i=0; i<size; i++) {
  outb_p(0x16, padr+2);
  outb_p(*(data++), padr);
  outb_p(0x17, padr+2);
 }
 outb_p(0x14,padr+2);
 outb_p(0x1c,padr+2);
 return;
}
