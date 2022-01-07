
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int ** snapshot; } ;


 int kfree (int *) ;

__attribute__((used)) static void ipw2100_snapshot_free(struct ipw2100_priv *priv)
{
 int i;
 if (!priv->snapshot[0])
  return;
 for (i = 0; i < 0x30; i++)
  kfree(priv->snapshot[i]);
 priv->snapshot[0] = ((void*)0);
}
