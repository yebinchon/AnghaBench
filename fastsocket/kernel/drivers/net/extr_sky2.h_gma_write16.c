
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 int SK_GMAC_REG (unsigned int,int) ;
 int sky2_write16 (struct sky2_hw const*,int ,int ) ;

__attribute__((used)) static inline void gma_write16(const struct sky2_hw *hw, unsigned port, int r, u16 v)
{
 sky2_write16(hw, SK_GMAC_REG(port,r), v);
}
