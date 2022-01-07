
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rev; TYPE_1__* lp; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int antenna; } ;


 int B43_ANTENNA_AUTO1 ;
 int B43_HF_ANTDIVHELP ;
 int B43_LPPHY_CRSGAIN_CTL ;
 scalar_t__ B43_WARN_ON (int) ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void b43_lpphy_op_set_rx_antenna(struct b43_wldev *dev, int antenna)
{
 if (dev->phy.rev >= 2)
  return;

 if (B43_WARN_ON(antenna > B43_ANTENNA_AUTO1))
  return;

 b43_hf_write(dev, b43_hf_read(dev) & ~B43_HF_ANTDIVHELP);

 b43_phy_maskset(dev, B43_LPPHY_CRSGAIN_CTL, 0xFFFD, antenna & 0x2);
 b43_phy_maskset(dev, B43_LPPHY_CRSGAIN_CTL, 0xFFFE, antenna & 0x1);

 b43_hf_write(dev, b43_hf_read(dev) | B43_HF_ANTDIVHELP);

 dev->phy.lp->antenna = antenna;
}
