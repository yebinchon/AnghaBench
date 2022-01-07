
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int collisions; int tx_fifo_errors; int tx_errors; int rx_frame_errors; int rx_over_errors; int rx_length_errors; int rx_crc_errors; int rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int RxAlignCntExp ;
 unsigned int RxCRCCntExp ;
 unsigned int RxErrorMask ;
 unsigned int RxLenCntExp ;
 unsigned int RxOverFlow ;
 int STATUS ;
 unsigned int TxErrorMask ;
 unsigned int TxNormalCollExp ;
 unsigned int TxUnderrun ;
 int XXDEBUG (char*) ;
 unsigned int bmread (struct net_device*,int ) ;
 int miscintcount ;

__attribute__((used)) static irqreturn_t bmac_misc_intr(int irq, void *dev_id)
{
 struct net_device *dev = (struct net_device *) dev_id;
 unsigned int status = bmread(dev, STATUS);
 if (miscintcount++ < 10) {
  XXDEBUG(("bmac_misc_intr\n"));
 }



 if (status & RxErrorMask) dev->stats.rx_errors++;
 if (status & RxCRCCntExp) dev->stats.rx_crc_errors++;
 if (status & RxLenCntExp) dev->stats.rx_length_errors++;
 if (status & RxOverFlow) dev->stats.rx_over_errors++;
 if (status & RxAlignCntExp) dev->stats.rx_frame_errors++;


 if (status & TxErrorMask) dev->stats.tx_errors++;
 if (status & TxUnderrun) dev->stats.tx_fifo_errors++;
 if (status & TxNormalCollExp) dev->stats.collisions++;
 return IRQ_HANDLED;
}
