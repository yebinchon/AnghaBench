
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned int* uregs; } ;


 struct pt_regs* GET_USERREG () ;
 unsigned int const REG_PC ;

__attribute__((used)) static inline unsigned long readRegister(const unsigned int nReg)
{







 struct pt_regs *regs = GET_USERREG();
 unsigned int val = regs->uregs[nReg];
 if (REG_PC == nReg)
  val -= 4;
 return val;
}
