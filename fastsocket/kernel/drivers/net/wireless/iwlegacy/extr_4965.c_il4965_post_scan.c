
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int active; int staging; } ;


 int il_commit_rxon (struct il_priv*) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static void
il4965_post_scan(struct il_priv *il)
{




 if (memcmp(&il->staging, &il->active, sizeof(il->staging)))
  il_commit_rxon(il);
}
