
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {unsigned int* tx_buf; int len; int * rx_buf; } ;
struct spi_message {int dummy; } ;
struct ks8851_net {int spidev; struct spi_message spi_msg1; struct spi_transfer spi_xfer1; } ;
typedef unsigned int __le16 ;


 int KS_SPIOP_WR ;
 int MK_OP (int,unsigned int) ;
 unsigned int cpu_to_le16 (int) ;
 int ks_err (struct ks8851_net*,char*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static void ks8851_wrreg8(struct ks8851_net *ks, unsigned reg, unsigned val)
{
 struct spi_transfer *xfer = &ks->spi_xfer1;
 struct spi_message *msg = &ks->spi_msg1;
 __le16 txb[2];
 int ret;
 int bit;

 bit = 1 << (reg & 3);

 txb[0] = cpu_to_le16(MK_OP(bit, reg) | KS_SPIOP_WR);
 txb[1] = val;

 xfer->tx_buf = txb;
 xfer->rx_buf = ((void*)0);
 xfer->len = 3;

 ret = spi_sync(ks->spidev, msg);
 if (ret < 0)
  ks_err(ks, "spi_sync() failed\n");
}
