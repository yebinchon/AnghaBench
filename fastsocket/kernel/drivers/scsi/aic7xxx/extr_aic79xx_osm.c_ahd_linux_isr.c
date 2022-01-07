
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ahd_softc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int ahd_intr (struct ahd_softc*) ;
 int ahd_lock (struct ahd_softc*,int *) ;
 int ahd_unlock (struct ahd_softc*,int *) ;

irqreturn_t
ahd_linux_isr(int irq, void *dev_id)
{
 struct ahd_softc *ahd;
 u_long flags;
 int ours;

 ahd = (struct ahd_softc *) dev_id;
 ahd_lock(ahd, &flags);
 ours = ahd_intr(ahd);
 ahd_unlock(ahd, &flags);
 return IRQ_RETVAL(ours);
}
