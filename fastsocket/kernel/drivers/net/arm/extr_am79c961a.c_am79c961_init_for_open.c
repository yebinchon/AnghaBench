
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct net_device {unsigned char* dev_addr; int flags; int base_addr; } ;
struct dev_priv {int rxhdr; int* rxbuffer; int txhdr; int* txbuffer; scalar_t__ txtail; scalar_t__ txhead; scalar_t__ rxtail; scalar_t__ rxhead; int chip_lock; } ;


 int BASERXH ;
 int BASERXL ;
 int BASETXL ;
 int CSR0 ;
 int CSR0_BABL ;
 int CSR0_CERR ;
 int CSR0_IENA ;
 int CSR0_MERR ;
 int CSR0_MISS ;
 int CSR0_RINT ;
 int CSR0_STOP ;
 int CSR0_STRT ;
 int CSR0_TINT ;
 int CSR3 ;
 int CSR3_BABLM ;
 int CSR3_DXSUFLO ;
 int CSR3_IDONM ;
 int CSR4 ;
 int CSR4_APAD_XMIT ;
 int CSR4_JABM ;
 int CSR4_MFCOM ;
 int CSR4_RCVCCOM ;
 int CSR4_TXSTRTM ;
 int IFF_PROMISC ;
 int LADRH ;
 int LADRL ;
 int MODE ;
 int MODE_PORT_10BT ;
 int MODE_PROMISC ;
 int PADRH ;
 int PADRL ;
 int POLLINT ;
 int RMD_OWN ;
 int RX_BUFFERS ;
 int SIZERXR ;
 int SIZETXR ;
 int TMD_ENP ;
 int TMD_STP ;
 int TX_BUFFERS ;
 int am_writeword (struct net_device*,int,int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_ireg (int ,int,int) ;
 int write_rreg (int ,int,int) ;

__attribute__((used)) static void
am79c961_init_for_open(struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);
 unsigned long flags;
 unsigned char *p;
 u_int hdr_addr, first_free_addr;
 int i;




 spin_lock_irqsave(&priv->chip_lock, flags);
 write_rreg (dev->base_addr, CSR0, CSR0_BABL|CSR0_CERR|CSR0_MISS|CSR0_MERR|CSR0_TINT|CSR0_RINT|CSR0_STOP);
 spin_unlock_irqrestore(&priv->chip_lock, flags);

 write_ireg (dev->base_addr, 5, 0x00a0);
 write_ireg (dev->base_addr, 6, 0x0081);
 write_ireg (dev->base_addr, 7, 0x0090);
 write_ireg (dev->base_addr, 2, 0x0000);

 for (i = LADRL; i <= LADRH; i++)
  write_rreg (dev->base_addr, i, 0);

 for (i = PADRL, p = dev->dev_addr; i <= PADRH; i++, p += 2)
  write_rreg (dev->base_addr, i, p[0] | (p[1] << 8));

 i = MODE_PORT_10BT;
 if (dev->flags & IFF_PROMISC)
  i |= MODE_PROMISC;

 write_rreg (dev->base_addr, MODE, i);
 write_rreg (dev->base_addr, POLLINT, 0);
 write_rreg (dev->base_addr, SIZERXR, -RX_BUFFERS);
 write_rreg (dev->base_addr, SIZETXR, -TX_BUFFERS);

 first_free_addr = RX_BUFFERS * 8 + TX_BUFFERS * 8 + 16;
 hdr_addr = 0;

 priv->rxhead = 0;
 priv->rxtail = 0;
 priv->rxhdr = hdr_addr;

 for (i = 0; i < RX_BUFFERS; i++) {
  priv->rxbuffer[i] = first_free_addr;
  am_writeword (dev, hdr_addr, first_free_addr);
  am_writeword (dev, hdr_addr + 2, RMD_OWN);
  am_writeword (dev, hdr_addr + 4, (-1600));
  am_writeword (dev, hdr_addr + 6, 0);
  first_free_addr += 1600;
  hdr_addr += 8;
 }
 priv->txhead = 0;
 priv->txtail = 0;
 priv->txhdr = hdr_addr;
 for (i = 0; i < TX_BUFFERS; i++) {
  priv->txbuffer[i] = first_free_addr;
  am_writeword (dev, hdr_addr, first_free_addr);
  am_writeword (dev, hdr_addr + 2, TMD_STP|TMD_ENP);
  am_writeword (dev, hdr_addr + 4, 0xf000);
  am_writeword (dev, hdr_addr + 6, 0);
  first_free_addr += 1600;
  hdr_addr += 8;
 }

 write_rreg (dev->base_addr, BASERXL, priv->rxhdr);
 write_rreg (dev->base_addr, BASERXH, 0);
 write_rreg (dev->base_addr, BASETXL, priv->txhdr);
 write_rreg (dev->base_addr, BASERXH, 0);
 write_rreg (dev->base_addr, CSR0, CSR0_STOP);
 write_rreg (dev->base_addr, CSR3, CSR3_IDONM|CSR3_BABLM|CSR3_DXSUFLO);
 write_rreg (dev->base_addr, CSR4, CSR4_APAD_XMIT|CSR4_MFCOM|CSR4_RCVCCOM|CSR4_TXSTRTM|CSR4_JABM);
 write_rreg (dev->base_addr, CSR0, CSR0_IENA|CSR0_STRT);
}
