
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {scalar_t__ base; } ;


 scalar_t__ M2P_STATUS ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int m2p_channel_state(struct m2p_channel *ch)
{
 return (readl(ch->base + M2P_STATUS) >> 4) & 0x3;
}
