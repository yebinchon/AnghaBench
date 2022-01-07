
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ks8695_priv {scalar_t__ io_regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void
ks8695_writereg(struct ks8695_priv *ksp, int reg, u32 value)
{
 writel(value, ksp->io_regs + reg);
}
