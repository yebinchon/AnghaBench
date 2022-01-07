
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BusLogic_HostAdapter {scalar_t__ IO_Address; } ;


 scalar_t__ BusLogic_StatusRegisterOffset ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static inline unsigned char BusLogic_ReadStatusRegister(struct BusLogic_HostAdapter *HostAdapter)
{
 return inb(HostAdapter->IO_Address + BusLogic_StatusRegisterOffset);
}
