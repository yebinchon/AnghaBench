
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ dev_addr; } ;
struct bmac_data {unsigned short* hash_table_mask; int is_bmac_plus; } ;


 int AECNT ;
 int BHASH0 ;
 int BHASH1 ;
 int BHASH2 ;
 int BHASH3 ;
 unsigned short volatile COLActiveLow ;
 unsigned short volatile ClkBit ;
 int EXCNT ;
 unsigned short EnableNormal ;
 int FECNT ;
 int FRCNT ;
 int INTDISABLE ;
 int LECNT ;
 int LTCNT ;
 int MADD0 ;
 int MADD1 ;
 int MADD2 ;
 int NCCNT ;
 int NTCNT ;
 int PAREG ;
 int RSEED ;
 int RXCFG ;
 int RXCV ;
 int RXFIFOCSR ;
 int RXRST ;
 unsigned short RxCRCNoStrip ;
 unsigned short RxFIFOEnable ;
 unsigned short RxHashFilterEnable ;
 unsigned short RxRejectOwnPackets ;
 unsigned short RxResetValue ;
 int STATUS ;
 unsigned short volatile SerialMode ;
 int TXFIFOCSR ;
 int TXRST ;
 int TXTH ;
 unsigned short TxFIFOEnable ;
 unsigned short volatile TxOutputEnable ;
 unsigned short volatile TxResetBit ;
 int XCVRIF ;
 int XIFC ;
 unsigned short bmread (struct net_device*,int ) ;
 int bmwrite (struct net_device*,int ,unsigned short volatile) ;
 struct bmac_data* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static void
bmac_init_registers(struct net_device *dev)
{
 struct bmac_data *bp = netdev_priv(dev);
 volatile unsigned short regValue;
 unsigned short *pWord16;
 int i;



 bmwrite(dev, RXRST, RxResetValue);
 bmwrite(dev, TXRST, TxResetBit);

 i = 100;
 do {
  --i;
  udelay(10000);
  regValue = bmread(dev, TXRST);
 } while ((regValue & TxResetBit) && i > 0);

 if (!bp->is_bmac_plus) {
  regValue = bmread(dev, XCVRIF);
  regValue |= ClkBit | SerialMode | COLActiveLow;
  bmwrite(dev, XCVRIF, regValue);
  udelay(10000);
 }

 bmwrite(dev, RSEED, (unsigned short)0x1968);

 regValue = bmread(dev, XIFC);
 regValue |= TxOutputEnable;
 bmwrite(dev, XIFC, regValue);

 bmread(dev, PAREG);


 bmwrite(dev, NCCNT, 0);
 bmwrite(dev, NTCNT, 0);
 bmwrite(dev, EXCNT, 0);
 bmwrite(dev, LTCNT, 0);


 bmwrite(dev, FRCNT, 0);
 bmwrite(dev, LECNT, 0);
 bmwrite(dev, AECNT, 0);
 bmwrite(dev, FECNT, 0);
 bmwrite(dev, RXCV, 0);


 bmwrite(dev, TXTH, 4);

 bmwrite(dev, TXFIFOCSR, 0);
 bmwrite(dev, TXFIFOCSR, TxFIFOEnable );


 bmwrite(dev, RXFIFOCSR, 0);
 bmwrite(dev, RXFIFOCSR, RxFIFOEnable );


 bmread(dev, STATUS);


 for (i=0; i<4; i++) bp->hash_table_mask[i] = 0;
 bmwrite(dev, BHASH3, bp->hash_table_mask[0]);
 bmwrite(dev, BHASH2, bp->hash_table_mask[1]);
 bmwrite(dev, BHASH1, bp->hash_table_mask[2]);
 bmwrite(dev, BHASH0, bp->hash_table_mask[3]);

 pWord16 = (unsigned short *)dev->dev_addr;
 bmwrite(dev, MADD0, *pWord16++);
 bmwrite(dev, MADD1, *pWord16++);
 bmwrite(dev, MADD2, *pWord16);

 bmwrite(dev, RXCFG, RxCRCNoStrip | RxHashFilterEnable | RxRejectOwnPackets);

 bmwrite(dev, INTDISABLE, EnableNormal);

 return;
}
