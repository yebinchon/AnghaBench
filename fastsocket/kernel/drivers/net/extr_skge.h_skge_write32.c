
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_hw {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void skge_write32(const struct skge_hw *hw, int reg, u32 val)
{
 writel(val, hw->regs + reg);
}
