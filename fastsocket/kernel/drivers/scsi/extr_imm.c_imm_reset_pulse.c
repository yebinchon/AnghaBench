
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udelay (int) ;
 int w_ctr (unsigned int,int) ;
 int w_dtr (unsigned int,int) ;

__attribute__((used)) static void imm_reset_pulse(unsigned int base)
{
 w_ctr(base, 0x04);
 w_dtr(base, 0x40);
 udelay(1);
 w_ctr(base, 0x0c);
 w_ctr(base, 0x0d);
 udelay(50);
 w_ctr(base, 0x0c);
 w_ctr(base, 0x04);
}
