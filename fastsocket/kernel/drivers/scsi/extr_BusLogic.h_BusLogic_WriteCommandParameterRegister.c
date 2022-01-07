
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BusLogic_HostAdapter {scalar_t__ IO_Address; } ;


 scalar_t__ BusLogic_CommandParameterRegisterOffset ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void BusLogic_WriteCommandParameterRegister(struct BusLogic_HostAdapter
         *HostAdapter, unsigned char Value)
{
 outb(Value, HostAdapter->IO_Address + BusLogic_CommandParameterRegisterOffset);
}
