
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {unsigned int regs; } ;


 int readw (unsigned int) ;

__attribute__((used)) static inline u16 sky2_read16(const struct sky2_hw *hw, unsigned reg)
{
 return readw(hw->regs + reg);
}
