
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 unsigned int Y2_CFG_SPC ;
 int sky2_read16 (struct sky2_hw const*,unsigned int) ;

__attribute__((used)) static inline u16 sky2_pci_read16(const struct sky2_hw *hw, unsigned reg)
{
 return sky2_read16(hw, Y2_CFG_SPC + reg);
}
