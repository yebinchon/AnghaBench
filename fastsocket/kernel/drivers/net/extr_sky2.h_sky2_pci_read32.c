
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {int dummy; } ;


 unsigned int Y2_CFG_SPC ;
 int sky2_read32 (struct sky2_hw const*,unsigned int) ;

__attribute__((used)) static inline u32 sky2_pci_read32(const struct sky2_hw *hw, unsigned reg)
{
 return sky2_read32(hw, Y2_CFG_SPC + reg);
}
