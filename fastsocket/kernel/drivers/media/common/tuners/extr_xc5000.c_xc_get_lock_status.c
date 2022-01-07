
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xc5000_priv {int dummy; } ;


 int XREG_LOCK ;
 int xc5000_readreg (struct xc5000_priv*,int ,int *) ;

__attribute__((used)) static int xc_get_lock_status(struct xc5000_priv *priv, u16 *lock_status)
{
 return xc5000_readreg(priv, XREG_LOCK, lock_status);
}
