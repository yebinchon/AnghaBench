
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {scalar_t__ regs; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void skge_write16(const struct skge_hw *hw, int reg, u16 val)
{
 writew(val, hw->regs + reg);
}
