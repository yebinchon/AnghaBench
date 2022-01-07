
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int ENODEV ;
 int RXDMA_CFIG1 (int) ;
 int RXDMA_CFIG1_EN ;
 int RXDMA_CFIG1_QST ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int niu_enable_rx_channel(struct niu *np, int channel, int on)
{
 u64 val = nr64(RXDMA_CFIG1(channel));
 int limit;

 if (on)
  val |= RXDMA_CFIG1_EN;
 else
  val &= ~RXDMA_CFIG1_EN;
 nw64(RXDMA_CFIG1(channel), val);

 limit = 1000;
 while (--limit > 0) {
  if (nr64(RXDMA_CFIG1(channel)) & RXDMA_CFIG1_QST)
   break;
  udelay(10);
 }
 if (limit <= 0)
  return -ENODEV;
 return 0;
}
