
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mchip_mmregs; } ;


 int mchip_sync (int) ;
 TYPE_1__ meye ;
 int writel (int ,int) ;

__attribute__((used)) static inline void mchip_set(int reg, u32 v)
{
 mchip_sync(reg);
 writel(v, meye.mchip_mmregs + reg);
}
