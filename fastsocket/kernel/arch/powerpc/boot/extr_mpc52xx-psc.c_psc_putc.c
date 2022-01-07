
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MPC52xx_PSC_BUFFER ;
 scalar_t__ MPC52xx_PSC_SR ;
 int MPC52xx_PSC_SR_TXRDY ;
 int in_be16 (scalar_t__) ;
 int out_8 (scalar_t__,unsigned char) ;
 scalar_t__ psc ;

__attribute__((used)) static void psc_putc(unsigned char c)
{
 while (!(in_be16(psc + MPC52xx_PSC_SR) & MPC52xx_PSC_SR_TXRDY)) ;
 out_8(psc + MPC52xx_PSC_BUFFER, c);
}
