
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udelay (int) ;
 int w_ctr (unsigned int,int) ;
 int w_dtr (unsigned int,int) ;

__attribute__((used)) static void ppa_reset_pulse(unsigned int base)
{
 w_dtr(base, 0x40);
 w_ctr(base, 0x8);
 udelay(30);
 w_ctr(base, 0xc);
}
