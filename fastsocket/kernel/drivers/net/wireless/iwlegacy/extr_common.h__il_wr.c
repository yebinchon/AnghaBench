
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct il_priv {scalar_t__ hw_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
_il_wr(struct il_priv *il, u32 ofs, u32 val)
{
 writel(val, il->hw_base + ofs);
}
