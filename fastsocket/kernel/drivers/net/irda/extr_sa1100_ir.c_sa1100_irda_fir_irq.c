
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa1100_irda {int hscr0; int rxdma; } ;
struct TYPE_2__ {int rx_frame_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int HSCR0_HSSP ;
 int HSSR0_EIF ;
 int HSSR0_FRE ;
 int HSSR0_RAB ;
 int Ser2HSCR0 ;
 int Ser2HSSR0 ;
 struct sa1100_irda* netdev_priv (struct net_device*) ;
 int sa1100_irda_fir_error (struct sa1100_irda*,struct net_device*) ;
 int sa1100_irda_rx_dma_start (struct sa1100_irda*) ;
 int sa1100_stop_dma (int ) ;

__attribute__((used)) static void sa1100_irda_fir_irq(struct net_device *dev)
{
 struct sa1100_irda *si = netdev_priv(dev);




 sa1100_stop_dma(si->rxdma);






 if (Ser2HSSR0 & (HSSR0_FRE | HSSR0_RAB)) {
  dev->stats.rx_errors++;

  if (Ser2HSSR0 & HSSR0_FRE)
   dev->stats.rx_frame_errors++;




  Ser2HSCR0 = si->hscr0 | HSCR0_HSSP;





  Ser2HSSR0 = HSSR0_FRE | HSSR0_RAB;
 }







 if (Ser2HSSR0 & HSSR0_EIF)
  sa1100_irda_fir_error(si, dev);




 sa1100_irda_rx_dma_start(si);
}
