
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91_priv {int dummy; } ;


 int AT91_MB_RX_LOW_MASK ;
 int AT91_TCR ;
 int at91_write (struct at91_priv const*,int ,int ) ;

__attribute__((used)) static inline void at91_activate_rx_low(const struct at91_priv *priv)
{
 u32 mask = AT91_MB_RX_LOW_MASK;
 at91_write(priv, AT91_TCR, mask);
}
