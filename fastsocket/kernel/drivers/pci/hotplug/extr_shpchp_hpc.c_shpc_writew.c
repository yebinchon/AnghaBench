
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {scalar_t__ creg; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void shpc_writew(struct controller *ctrl, int reg, u16 val)
{
 writew(val, ctrl->creg + reg);
}
