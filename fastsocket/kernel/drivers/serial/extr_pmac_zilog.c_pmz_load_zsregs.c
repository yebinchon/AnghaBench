
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_pmac_port {int dummy; } ;


 unsigned char ALL_SNT ;
 int BRENAB ;
 int EN85C30 ;
 int EXT_INT_ENAB ;
 size_t R0 ;
 size_t R1 ;
 size_t R10 ;
 size_t R11 ;
 size_t R12 ;
 size_t R13 ;
 size_t R14 ;
 size_t R15 ;
 size_t R3 ;
 size_t R4 ;
 size_t R5 ;
 size_t R6 ;
 size_t R7 ;
 size_t R7P ;
 size_t R9 ;
 int RES_EXT_INT ;
 int RxENABLE ;
 int RxINT_MASK ;
 int TxENABLE ;
 int TxINT_ENAB ;
 int ZS_CLEARERR (struct uart_pmac_port*) ;
 int ZS_CLEARFIFO (struct uart_pmac_port*) ;
 scalar_t__ ZS_IS_ASLEEP (struct uart_pmac_port*) ;
 unsigned char read_zsreg (struct uart_pmac_port*,size_t) ;
 int udelay (int) ;
 int write_zsreg (struct uart_pmac_port*,size_t,int) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_load_zsregs(struct uart_pmac_port *uap, u8 *regs)
{
 int i;

 if (ZS_IS_ASLEEP(uap))
  return;


 for (i = 0; i < 1000; i++) {
  unsigned char stat = read_zsreg(uap, R1);
  if (stat & ALL_SNT)
   break;
  udelay(100);
 }

 ZS_CLEARERR(uap);
 zssync(uap);
 ZS_CLEARFIFO(uap);
 zssync(uap);
 ZS_CLEARERR(uap);


 write_zsreg(uap, R1,
      regs[R1] & ~(RxINT_MASK | TxINT_ENAB | EXT_INT_ENAB));


 write_zsreg(uap, R4, regs[R4]);


 write_zsreg(uap, R10, regs[R10]);


        write_zsreg(uap, R3, regs[R3] & ~RxENABLE);
        write_zsreg(uap, R5, regs[R5] & ~TxENABLE);


 write_zsreg(uap, R15, regs[R15] | EN85C30);
 write_zsreg(uap, R7, regs[R7P]);


 write_zsreg(uap, R15, regs[R15] & ~EN85C30);


 write_zsreg(uap, R6, regs[R6]);
 write_zsreg(uap, R7, regs[R7]);


 write_zsreg(uap, R14, regs[R14] & ~BRENAB);


 write_zsreg(uap, R11, regs[R11]);


 write_zsreg(uap, R12, regs[R12]);
 write_zsreg(uap, R13, regs[R13]);


 write_zsreg(uap, R14, regs[R14]);


 write_zsreg(uap, R0, RES_EXT_INT);
 write_zsreg(uap, R0, RES_EXT_INT);


 write_zsreg(uap, R3, regs[R3]);
 write_zsreg(uap, R5, regs[R5]);


 write_zsreg(uap, R1, regs[R1]);


 write_zsreg(uap, R9, regs[R9]);
}
