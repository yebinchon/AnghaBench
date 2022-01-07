
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rxon_assoc ) (struct il_priv*) ;} ;


 int stub1 (struct il_priv*) ;

__attribute__((used)) static inline int
il_send_rxon_assoc(struct il_priv *il)
{
 return il->ops->rxon_assoc(il);
}
