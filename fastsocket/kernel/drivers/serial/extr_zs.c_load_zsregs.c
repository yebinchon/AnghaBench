
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zs_port {int dummy; } ;


 int BRENABL ;
 int R1 ;
 int R10 ;
 int R11 ;
 int R12 ;
 int R13 ;
 int R14 ;
 int R15 ;
 int R2 ;
 int R3 ;
 int R4 ;
 int R5 ;
 int R9 ;
 int RxENABLE ;
 int TxENAB ;
 int write_zsreg (struct zs_port*,int ,int) ;
 int zs_line_drain (struct zs_port*,int) ;

__attribute__((used)) static void load_zsregs(struct zs_port *zport, u8 *regs, int irq)
{

 zs_line_drain(zport, irq);

 write_zsreg(zport, R3, regs[3] & ~RxENABLE);
 write_zsreg(zport, R5, regs[5] & ~TxENAB);
 write_zsreg(zport, R4, regs[4]);
 write_zsreg(zport, R9, regs[9]);
 write_zsreg(zport, R1, regs[1]);
 write_zsreg(zport, R2, regs[2]);
 write_zsreg(zport, R10, regs[10]);
 write_zsreg(zport, R14, regs[14] & ~BRENABL);
 write_zsreg(zport, R11, regs[11]);
 write_zsreg(zport, R12, regs[12]);
 write_zsreg(zport, R13, regs[13]);
 write_zsreg(zport, R14, regs[14]);
 write_zsreg(zport, R15, regs[15]);
 if (regs[3] & RxENABLE)
  write_zsreg(zport, R3, regs[3]);
 if (regs[5] & TxENAB)
  write_zsreg(zport, R5, regs[5]);
 return;
}
