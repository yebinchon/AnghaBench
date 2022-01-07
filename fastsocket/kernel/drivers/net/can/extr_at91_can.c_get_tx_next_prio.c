
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int tx_next; } ;


 int AT91_NEXT_PRIO_SHIFT ;

__attribute__((used)) static inline int get_tx_next_prio(const struct at91_priv *priv)
{
 return (priv->tx_next >> AT91_NEXT_PRIO_SHIFT) & 0xf;
}
