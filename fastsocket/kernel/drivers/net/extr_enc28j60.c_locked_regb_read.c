
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enc28j60_net {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nolock_regb_read (struct enc28j60_net*,int ) ;

__attribute__((used)) static int locked_regb_read(struct enc28j60_net *priv,
         u8 address)
{
 int ret;

 mutex_lock(&priv->lock);
 ret = nolock_regb_read(priv, address);
 mutex_unlock(&priv->lock);

 return ret;
}
