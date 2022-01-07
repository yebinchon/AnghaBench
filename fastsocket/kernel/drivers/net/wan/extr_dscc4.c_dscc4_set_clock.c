
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct dscc4_dev_priv {int dev_id; TYPE_1__* pci_priv; } ;
struct TYPE_2__ {int xtal_hz; } ;


 int BRR ;
 int BRR_DIVIDER_MAX ;
 int Ccr0ClockMask ;
 scalar_t__ dscc4_check_clock_ability (int ) ;
 struct dscc4_dev_priv* dscc4_priv (struct net_device*) ;
 int scc_writel (int,struct dscc4_dev_priv*,struct net_device*,int ) ;

__attribute__((used)) static int dscc4_set_clock(struct net_device *dev, u32 *bps, u32 *state)
{
 struct dscc4_dev_priv *dpriv = dscc4_priv(dev);
 int ret = -1;
 u32 brr;

 *state &= ~Ccr0ClockMask;
 if (*bps) {
  u32 n = 0, m = 0, divider;
  int xtal;

  xtal = dpriv->pci_priv->xtal_hz;
  if (!xtal)
   goto done;
  if (dscc4_check_clock_ability(dpriv->dev_id) < 0)
   goto done;
  divider = xtal / *bps;
  if (divider > BRR_DIVIDER_MAX) {
   divider >>= 4;
   *state |= 0x00000036;
  } else
   *state |= 0x00000037;
  if (divider >> 22) {
   n = 63;
   m = 15;
  } else if (divider) {

   m = 0;
   while (0xffffffc0 & divider) {
    m++;
    divider >>= 1;
   }
   n = divider;
  }
  brr = (m << 8) | n;
  divider = n << m;
  if (!(*state & 0x00000001))
   divider <<= 4;
  *bps = xtal / divider;
 } else {





  brr = 0;
 }
 scc_writel(brr, dpriv, dev, BRR);
 ret = 0;
done:
 return ret;
}
