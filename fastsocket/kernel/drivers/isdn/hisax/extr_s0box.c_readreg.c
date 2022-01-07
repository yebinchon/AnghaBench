
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int inb_p (unsigned int) ;
 int* nibtab ;
 int outb_p (int,unsigned int) ;

__attribute__((used)) static inline u_char
readreg(unsigned int padr, signed int addr, u_char off) {
 register u_char n1, n2;

 outb_p(0x1c,padr+2);
 outb_p(0x14,padr+2);
 outb_p((addr+off)|0x80,padr);
 outb_p(0x16,padr+2);
 outb_p(0x17,padr+2);
 n1 = (inb_p(padr+1) >> 3) & 0x17;
 outb_p(0x16,padr+2);
 n2 = (inb_p(padr+1) >> 3) & 0x17;
 outb_p(0x14,padr+2);
 outb_p(0x1c,padr+2);
 return nibtab[n1] | (nibtab[n2] << 4);
}
