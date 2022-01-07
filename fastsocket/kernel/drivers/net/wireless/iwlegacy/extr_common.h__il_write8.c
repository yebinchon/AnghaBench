
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct il_priv {scalar_t__ hw_base; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void
_il_write8(struct il_priv *il, u32 ofs, u8 val)
{
 writeb(val, il->hw_base + ofs);
}
