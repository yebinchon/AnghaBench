
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct controller {scalar_t__ hpc_reg; } ;


 scalar_t__ SLOT_ENABLE ;
 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 read_slot_enable(struct controller *ctrl)
{
 return readb(ctrl->hpc_reg + SLOT_ENABLE);
}
