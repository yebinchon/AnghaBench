
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 int SK_GMAC_REG (unsigned int,unsigned int) ;
 int sky2_read16 (struct sky2_hw const*,int ) ;

__attribute__((used)) static inline u16 gma_read16(const struct sky2_hw *hw, unsigned port, unsigned reg)
{
 return sky2_read16(hw, SK_GMAC_REG(port,reg));
}
