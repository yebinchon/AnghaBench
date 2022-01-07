
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m2p_channel {scalar_t__ base; } ;


 scalar_t__ M2P_CONTROL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void m2p_set_control(struct m2p_channel *ch, u32 v)
{





 writel(v, ch->base + M2P_CONTROL);
 readl(ch->base + M2P_CONTROL);
}
