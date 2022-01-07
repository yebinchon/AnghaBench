
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct controller {scalar_t__ hpc_reg; } ;


 scalar_t__ SLOT_POWER ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static inline void enable_slot_power(struct controller *ctrl, u8 slot)
{
 u8 slot_power;

 slot_power = readb(ctrl->hpc_reg + SLOT_POWER);
 slot_power |= (0x01 << slot);
 writeb(slot_power, ctrl->hpc_reg + SLOT_POWER);
}
