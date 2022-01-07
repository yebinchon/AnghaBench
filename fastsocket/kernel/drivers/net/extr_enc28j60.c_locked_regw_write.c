
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct enc28j60_net {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nolock_regw_write (struct enc28j60_net*,int ,int ) ;

__attribute__((used)) static void locked_regw_write(struct enc28j60_net *priv,
           u8 address, u16 data)
{
 mutex_lock(&priv->lock);
 nolock_regw_write(priv, address, data);
 mutex_unlock(&priv->lock);
}
