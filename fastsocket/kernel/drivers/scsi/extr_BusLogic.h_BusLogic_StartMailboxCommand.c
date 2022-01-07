
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BusLogic_HostAdapter {int dummy; } ;


 int BusLogic_ExecuteMailboxCommand ;
 int BusLogic_WriteCommandParameterRegister (struct BusLogic_HostAdapter*,int ) ;

__attribute__((used)) static inline void BusLogic_StartMailboxCommand(struct BusLogic_HostAdapter *HostAdapter)
{
 BusLogic_WriteCommandParameterRegister(HostAdapter, BusLogic_ExecuteMailboxCommand);
}
