
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct controller {scalar_t__ creg; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void shpc_writeb(struct controller *ctrl, int reg, u8 val)
{
 writeb(val, ctrl->creg + reg);
}
