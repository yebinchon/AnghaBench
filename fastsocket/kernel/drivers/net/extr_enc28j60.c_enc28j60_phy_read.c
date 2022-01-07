
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct enc28j60_net {int lock; } ;


 int MICMD ;
 int MICMD_MIIRD ;
 int MIRDL ;
 int MIREGADR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nolock_regb_write (struct enc28j60_net*,int ,int) ;
 int nolock_regw_read (struct enc28j60_net*,int ) ;
 int wait_phy_ready (struct enc28j60_net*) ;

__attribute__((used)) static u16 enc28j60_phy_read(struct enc28j60_net *priv, u8 address)
{
 u16 ret;

 mutex_lock(&priv->lock);

 nolock_regb_write(priv, MIREGADR, address);

 nolock_regb_write(priv, MICMD, MICMD_MIIRD);

 wait_phy_ready(priv);

 nolock_regb_write(priv, MICMD, 0x00);

 ret = nolock_regw_read(priv, MIRDL);
 mutex_unlock(&priv->lock);

 return ret;
}
