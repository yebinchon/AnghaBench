
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int il_is_ready (struct il_priv*) ;
 scalar_t__ il_is_rfkill (struct il_priv*) ;

__attribute__((used)) static inline int
il_is_ready_rf(struct il_priv *il)
{

 if (il_is_rfkill(il))
  return 0;

 return il_is_ready(il);
}
