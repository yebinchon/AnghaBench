
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sky2_hw {unsigned int regs; } ;


 int writeb (int ,unsigned int) ;

__attribute__((used)) static inline void sky2_write8(const struct sky2_hw *hw, unsigned reg, u8 val)
{
 writeb(val, hw->regs + reg);
}
