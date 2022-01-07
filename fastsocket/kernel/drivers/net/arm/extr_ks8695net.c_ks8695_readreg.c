
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ks8695_priv {scalar_t__ io_regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32
ks8695_readreg(struct ks8695_priv *ksp, int reg)
{
 return readl(ksp->io_regs + reg);
}
