
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ipoib_dev_priv {int pkey; TYPE_1__* dev; int port; int ca; } ;
struct TYPE_2__ {int* broadcast; } ;


 int ib_query_pkey (int ,int ,int ,int*) ;
 int ipoib_dbg (struct ipoib_dev_priv*,char*,int,int) ;
 int ipoib_warn (struct ipoib_dev_priv*,char*,int ,int) ;

__attribute__((used)) static inline int update_parent_pkey(struct ipoib_dev_priv *priv)
{
 int result;
 u16 prev_pkey;

 prev_pkey = priv->pkey;
 result = ib_query_pkey(priv->ca, priv->port, 0, &priv->pkey);
 if (result) {
  ipoib_warn(priv, "ib_query_pkey port %d failed (ret = %d)\n",
      priv->port, result);
  return result;
 }

 priv->pkey |= 0x8000;

 if (prev_pkey != priv->pkey) {
  ipoib_dbg(priv, "pkey changed from 0x%x to 0x%x\n",
     prev_pkey, priv->pkey);




  priv->dev->broadcast[8] = priv->pkey >> 8;
  priv->dev->broadcast[9] = priv->pkey & 0xff;
  return 0;
 }

 return 1;
}
