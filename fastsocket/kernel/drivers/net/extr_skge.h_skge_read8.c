
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skge_hw {scalar_t__ regs; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 skge_read8(const struct skge_hw *hw, int reg)
{
 return readb(hw->regs + reg);
}
