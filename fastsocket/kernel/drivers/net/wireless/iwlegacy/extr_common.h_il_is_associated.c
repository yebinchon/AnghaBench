
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter_flags; } ;
struct il_priv {TYPE_1__ active; } ;


 int RXON_FILTER_ASSOC_MSK ;

__attribute__((used)) static inline int
il_is_associated(struct il_priv *il)
{
 return (il->active.filter_flags & RXON_FILTER_ASSOC_MSK) ? 1 : 0;
}
