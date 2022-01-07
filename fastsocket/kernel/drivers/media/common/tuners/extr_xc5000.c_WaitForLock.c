
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xc5000_priv {int dummy; } ;


 int xc_get_lock_status (struct xc5000_priv*,int*) ;
 int xc_wait (int) ;

__attribute__((used)) static u16 WaitForLock(struct xc5000_priv *priv)
{
 u16 lockState = 0;
 int watchDogCount = 40;

 while ((lockState == 0) && (watchDogCount > 0)) {
  xc_get_lock_status(priv, &lockState);
  if (lockState != 1) {
   xc_wait(5);
   watchDogCount--;
  }
 }
 return lockState;
}
