
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int control; } ;


 unsigned char ALL_SNT ;
 unsigned char BRENAB ;
 int ERR_RES ;
 unsigned char EXT_INT_ENAB ;
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
 unsigned char RES_EXT_INT ;
 unsigned char RxENAB ;
 unsigned char RxINT_MASK ;
 unsigned char TxENAB ;
 unsigned char TxINT_ENAB ;
 int ZSDELAY () ;
 int ZS_WSYNC (struct zilog_channel*) ;
 int ip22zilog_clear_fifo (struct zilog_channel*) ;
 unsigned char read_zsreg (struct zilog_channel*,size_t) ;
 int udelay (int) ;
 int write_zsreg (struct zilog_channel*,size_t,unsigned char) ;
 int writeb (int ,int *) ;

__attribute__((used)) static void __load_zsregs(struct zilog_channel *channel, unsigned char *regs)
{
 int i;


 for (i = 0; i < 1000; i++) {
  unsigned char stat = read_zsreg(channel, R1);
  if (stat & ALL_SNT)
   break;
  udelay(100);
 }

 writeb(ERR_RES, &channel->control);
 ZSDELAY();
 ZS_WSYNC(channel);

 ip22zilog_clear_fifo(channel);


 write_zsreg(channel, R1,
      regs[R1] & ~(RxINT_MASK | TxINT_ENAB | EXT_INT_ENAB));


 write_zsreg(channel, R4, regs[R4]);


 write_zsreg(channel, R10, regs[R10]);


 write_zsreg(channel, R3, regs[R3] & ~RxENAB);
 write_zsreg(channel, R5, regs[R5] & ~TxENAB);


 write_zsreg(channel, R6, regs[R6]);
 write_zsreg(channel, R7, regs[R7]);







 write_zsreg(channel, R14, regs[R14] & ~BRENAB);


 write_zsreg(channel, R11, regs[R11]);


 write_zsreg(channel, R12, regs[R12]);
 write_zsreg(channel, R13, regs[R13]);


 write_zsreg(channel, R14, regs[R14]);


 write_zsreg(channel, R15, regs[R15]);


 write_zsreg(channel, R0, RES_EXT_INT);
 write_zsreg(channel, R0, RES_EXT_INT);


 write_zsreg(channel, R3, regs[R3]);
 write_zsreg(channel, R5, regs[R5]);


 write_zsreg(channel, R1, regs[R1]);
}
