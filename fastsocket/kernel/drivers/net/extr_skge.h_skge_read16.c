
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct skge_hw {scalar_t__ regs; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 skge_read16(const struct skge_hw *hw, int reg)
{
 return readw(hw->regs + reg);
}
