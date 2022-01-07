
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_priv {int dummy; } ;
typedef enum at91_mb_mode { ____Placeholder_at91_mb_mode } at91_mb_mode ;


 int AT91_MMR (unsigned int) ;
 int at91_write (struct at91_priv const*,int ,int) ;

__attribute__((used)) static inline void set_mb_mode_prio(const struct at91_priv *priv,
  unsigned int mb, enum at91_mb_mode mode, int prio)
{
 at91_write(priv, AT91_MMR(mb), (mode << 24) | (prio << 16));
}
