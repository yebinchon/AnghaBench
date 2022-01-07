
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pmac_port {int* curregs; int prev_status; } ;


 int BRENAB ;
 int BRKIE ;
 int CHRA ;
 int CHRB ;
 int DTR ;
 int ERR_RES ;
 int MIE ;
 int NV ;
 size_t R0 ;
 size_t R1 ;
 size_t R12 ;
 size_t R13 ;
 size_t R14 ;
 size_t R15 ;
 size_t R3 ;
 size_t R4 ;
 size_t R5 ;
 size_t R9 ;
 int RES_H_IUS ;
 int RTS ;
 int Rx8 ;
 int RxENABLE ;
 int SB1 ;
 int Tx8 ;
 int TxENABLE ;
 int X16CLK ;
 scalar_t__ ZS_IS_CHANNEL_A (struct uart_pmac_port*) ;
 int ZS_IS_IRDA (struct uart_pmac_port*) ;
 int memset (int**,int ,int) ;
 int pmz_fix_zero_bug_scc (struct uart_pmac_port*) ;
 int pmz_load_zsregs (struct uart_pmac_port*,int*) ;
 int pmz_set_scc_power (struct uart_pmac_port*,int) ;
 int read_zsreg (struct uart_pmac_port*,size_t) ;
 int udelay (int) ;
 int write_zsreg (struct uart_pmac_port*,size_t,int) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static int __pmz_startup(struct uart_pmac_port *uap)
{
 int pwr_delay = 0;

 memset(&uap->curregs, 0, sizeof(uap->curregs));


 pwr_delay = pmz_set_scc_power(uap, 1);


 pmz_fix_zero_bug_scc(uap);


 uap->curregs[R9] = 0;
 write_zsreg(uap, 9, ZS_IS_CHANNEL_A(uap) ? CHRA : CHRB);
 zssync(uap);
 udelay(10);
 write_zsreg(uap, 9, 0);
 zssync(uap);


 write_zsreg(uap, R1, 0);
 write_zsreg(uap, R0, ERR_RES);
 write_zsreg(uap, R0, ERR_RES);
 write_zsreg(uap, R0, RES_H_IUS);
 write_zsreg(uap, R0, RES_H_IUS);


 uap->curregs[R4] = X16CLK | SB1;
 uap->curregs[R3] = Rx8;
 uap->curregs[R5] = Tx8 | RTS;
 if (!ZS_IS_IRDA(uap))
  uap->curregs[R5] |= DTR;
 uap->curregs[R12] = 0;
 uap->curregs[R13] = 0;
 uap->curregs[R14] = BRENAB;


 uap->curregs[R15] = BRKIE;


 uap->curregs[R9] |= NV | MIE;

 pmz_load_zsregs(uap, uap->curregs);


 write_zsreg(uap, R3, uap->curregs[R3] |= RxENABLE);
 write_zsreg(uap, R5, uap->curregs[R5] |= TxENABLE);


 uap->prev_status = read_zsreg(uap, R0);


 return pwr_delay;
}
