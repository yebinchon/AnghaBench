
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv643xx_eth_private {TYPE_1__* shared; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void wrl(struct mv643xx_eth_private *mp, int offset, u32 data)
{
 writel(data, mp->shared->base + offset);
}
