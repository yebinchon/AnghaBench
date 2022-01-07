
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AC97_LINK_FRAME ;
 scalar_t__* delay_table ;
 int udelay (scalar_t__) ;

__attribute__((used)) static inline void poll_delay(int d)
{
 udelay(3 * AC97_LINK_FRAME + delay_table[d]);
}
