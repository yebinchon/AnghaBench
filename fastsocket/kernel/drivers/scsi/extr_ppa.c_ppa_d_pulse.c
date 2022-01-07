
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int w_ctr (unsigned short,int) ;
 int w_dtr (unsigned short,unsigned char) ;

__attribute__((used)) static inline void ppa_d_pulse(unsigned short ppb, unsigned char b)
{
 w_dtr(ppb, b);
 w_ctr(ppb, 0xc);
 w_ctr(ppb, 0xe);
 w_ctr(ppb, 0xc);
 w_ctr(ppb, 0x4);
 w_ctr(ppb, 0xc);
}
