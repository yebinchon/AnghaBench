
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;
struct b43_txstatus {int cookie; int seq; int phy_stat; int frame_count; int rts_count; int supp_reason; int pm_indicated; int intermediate; int for_ampdu; int acked; } ;


 int B43_MMIO_XMITSTAT_0 ;
 int B43_MMIO_XMITSTAT_1 ;
 int b43_handle_txstatus (struct b43_wldev*,struct b43_txstatus*) ;
 int b43_read32 (struct b43_wldev*,int ) ;

__attribute__((used)) static void handle_irq_transmit_status(struct b43_wldev *dev)
{
 u32 v0, v1;
 u16 tmp;
 struct b43_txstatus stat;

 while (1) {
  v0 = b43_read32(dev, B43_MMIO_XMITSTAT_0);
  if (!(v0 & 0x00000001))
   break;
  v1 = b43_read32(dev, B43_MMIO_XMITSTAT_1);

  stat.cookie = (v0 >> 16);
  stat.seq = (v1 & 0x0000FFFF);
  stat.phy_stat = ((v1 & 0x00FF0000) >> 16);
  tmp = (v0 & 0x0000FFFF);
  stat.frame_count = ((tmp & 0xF000) >> 12);
  stat.rts_count = ((tmp & 0x0F00) >> 8);
  stat.supp_reason = ((tmp & 0x001C) >> 2);
  stat.pm_indicated = !!(tmp & 0x0080);
  stat.intermediate = !!(tmp & 0x0040);
  stat.for_ampdu = !!(tmp & 0x0020);
  stat.acked = !!(tmp & 0x0002);

  b43_handle_txstatus(dev, &stat);
 }
}
