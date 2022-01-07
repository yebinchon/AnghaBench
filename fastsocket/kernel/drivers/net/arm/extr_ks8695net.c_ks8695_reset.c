
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8695_priv {int dev; } ;


 int DRXC_RB ;
 int DRXC_RU ;
 int DTXC_TAC ;
 int DTXC_TEP ;
 int DTXC_TRST ;
 int KS8695_DRXC ;
 int KS8695_DTXC ;
 int dev_crit (int ,char*) ;
 int ks8695_readreg (struct ks8695_priv*,int ) ;
 int ks8695_writereg (struct ks8695_priv*,int ,int) ;
 int msleep (int) ;
 int watchdog ;

__attribute__((used)) static void
ks8695_reset(struct ks8695_priv *ksp)
{
 int reset_timeout = watchdog;

 ks8695_writereg(ksp, KS8695_DTXC, DTXC_TRST);
 while (reset_timeout--) {
  if (!(ks8695_readreg(ksp, KS8695_DTXC) & DTXC_TRST))
   break;
  msleep(1);
 }

 if (reset_timeout < 0) {
  dev_crit(ksp->dev,
    "Timeout waiting for DMA engines to reset\n");

 }




 msleep(10);


 ks8695_writereg(ksp, KS8695_DRXC, DRXC_RU | DRXC_RB);

 ks8695_writereg(ksp, KS8695_DTXC, DTXC_TEP | DTXC_TAC);
}
