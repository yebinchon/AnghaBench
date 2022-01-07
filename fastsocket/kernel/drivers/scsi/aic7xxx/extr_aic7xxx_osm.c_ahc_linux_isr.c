
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ahc_softc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int ahc_intr (struct ahc_softc*) ;
 int ahc_lock (struct ahc_softc*,int *) ;
 int ahc_unlock (struct ahc_softc*,int *) ;

irqreturn_t
ahc_linux_isr(int irq, void *dev_id)
{
 struct ahc_softc *ahc;
 u_long flags;
 int ours;

 ahc = (struct ahc_softc *) dev_id;
 ahc_lock(ahc, &flags);
 ours = ahc_intr(ahc);
 ahc_unlock(ahc, &flags);
 return IRQ_RETVAL(ours);
}
