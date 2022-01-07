
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dscc4_dev_priv {int * scc_regs; } ;



__attribute__((used)) static inline u32 scc_readl(struct dscc4_dev_priv *dpriv, int offset)
{
 return dpriv->scc_regs[offset >> 2];
}
