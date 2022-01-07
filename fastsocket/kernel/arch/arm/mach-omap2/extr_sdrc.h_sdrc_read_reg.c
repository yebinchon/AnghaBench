
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP_SDRC_REGADDR (int ) ;
 int __raw_readl (int ) ;

__attribute__((used)) static inline u32 sdrc_read_reg(u16 reg)
{
 return __raw_readl(OMAP_SDRC_REGADDR(reg));
}
