
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pmac_port {int * curregs; } ;


 int DTR ;
 size_t R5 ;
 int mdelay (int) ;
 int write_zsreg (struct uart_pmac_port*,size_t,int ) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_irda_reset(struct uart_pmac_port *uap)
{
 uap->curregs[R5] |= DTR;
 write_zsreg(uap, R5, uap->curregs[R5]);
 zssync(uap);
 mdelay(110);
 uap->curregs[R5] &= ~DTR;
 write_zsreg(uap, R5, uap->curregs[R5]);
 zssync(uap);
 mdelay(10);
}
