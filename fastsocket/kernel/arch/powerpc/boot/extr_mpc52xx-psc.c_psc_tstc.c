
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MPC52xx_PSC_SR ;
 int MPC52xx_PSC_SR_RXRDY ;
 int in_be16 (scalar_t__) ;
 scalar_t__ psc ;

__attribute__((used)) static unsigned char psc_tstc(void)
{
 return (in_be16(psc + MPC52xx_PSC_SR) & MPC52xx_PSC_SR_RXRDY) != 0;
}
