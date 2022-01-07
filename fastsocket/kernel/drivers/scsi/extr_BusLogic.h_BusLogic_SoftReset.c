
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SoftReset; } ;
union BusLogic_ControlRegister {scalar_t__ All; TYPE_1__ cr; } ;
struct BusLogic_HostAdapter {scalar_t__ IO_Address; } ;


 scalar_t__ BusLogic_ControlRegisterOffset ;
 int outb (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void BusLogic_SoftReset(struct BusLogic_HostAdapter *HostAdapter)
{
 union BusLogic_ControlRegister ControlRegister;
 ControlRegister.All = 0;
 ControlRegister.cr.SoftReset = 1;
 outb(ControlRegister.All, HostAdapter->IO_Address + BusLogic_ControlRegisterOffset);
}
