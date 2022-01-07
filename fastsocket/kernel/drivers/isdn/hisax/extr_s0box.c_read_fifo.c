
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;


 int inb_p (unsigned int) ;
 int* nibtab ;
 int outb_p (int,unsigned int) ;

__attribute__((used)) static inline void
read_fifo(unsigned int padr, signed int adr, u_char * data, int size)
{
 int i;
 register u_char n1, n2;

 outb_p(0x1c, padr+2);
 outb_p(0x14, padr+2);
 outb_p(adr|0x80, padr);
 outb_p(0x16, padr+2);
 for (i=0; i<size; i++) {
  outb_p(0x17, padr+2);
  n1 = (inb_p(padr+1) >> 3) & 0x17;
  outb_p(0x16,padr+2);
  n2 = (inb_p(padr+1) >> 3) & 0x17;
  *(data++)=nibtab[n1] | (nibtab[n2] << 4);
 }
 outb_p(0x14,padr+2);
 outb_p(0x1c,padr+2);
 return;
}
