
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int outb_p (int,unsigned int) ;

__attribute__((used)) static inline void
writereg(unsigned int padr, signed int addr, u_char off, u_char val) {
 outb_p(0x1c,padr+2);
 outb_p(0x14,padr+2);
 outb_p((addr+off)&0x7f,padr);
 outb_p(0x16,padr+2);
 outb_p(val,padr);
 outb_p(0x17,padr+2);
 outb_p(0x14,padr+2);
 outb_p(0x1c,padr+2);
}
