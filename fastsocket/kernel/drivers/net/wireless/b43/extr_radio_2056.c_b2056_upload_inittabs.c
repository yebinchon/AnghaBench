
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b2056_inittabs_pts {int rx_length; int rx; int tx_length; int tx; int syn_length; int syn; } ;


 size_t ARRAY_SIZE (struct b2056_inittabs_pts*) ;
 int B2056_RX0 ;
 int B2056_RX1 ;
 int B2056_SYN ;
 int B2056_TX0 ;
 int B2056_TX1 ;
 int B43_WARN_ON (int) ;
 struct b2056_inittabs_pts* b2056_inittabs ;
 int b2056_upload_inittab (struct b43_wldev*,int,int,int ,int ,int ) ;

void b2056_upload_inittabs(struct b43_wldev *dev,
      bool ghz5, bool ignore_uploadflag)
{
 const struct b2056_inittabs_pts *pts;

 if (dev->phy.rev >= ARRAY_SIZE(b2056_inittabs)) {
  B43_WARN_ON(1);
  return;
 }
 pts = &b2056_inittabs[dev->phy.rev];

 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_SYN, pts->syn, pts->syn_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_TX0, pts->tx, pts->tx_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_TX1, pts->tx, pts->tx_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_RX0, pts->rx, pts->rx_length);
 b2056_upload_inittab(dev, ghz5, ignore_uploadflag,
    B2056_RX1, pts->rx, pts->rx_length);
}
