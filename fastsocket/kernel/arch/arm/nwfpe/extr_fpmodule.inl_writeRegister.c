
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* uregs; } ;


 struct pt_regs* GET_USERREG () ;

__attribute__((used)) static inline void
writeRegister(const unsigned int nReg, const unsigned long val)
{
 struct pt_regs *regs = GET_USERREG();
 regs->uregs[nReg] = val;
}
