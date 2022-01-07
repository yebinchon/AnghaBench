
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int IOConfigReg0_1 ;
 unsigned int IOConfigReg38_39 ;

__attribute__((used)) static inline unsigned IOConfigReg(unsigned pfi_channel)
{
 unsigned reg = IOConfigReg0_1 + pfi_channel / 2;
 BUG_ON(reg > IOConfigReg38_39);
 return reg;
}
