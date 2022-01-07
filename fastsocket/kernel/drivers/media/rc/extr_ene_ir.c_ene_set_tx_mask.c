
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int transmitter_mask; } ;


 int dbg (char*,...) ;
 int ene_tx_set_transmitters (struct ene_device*) ;

__attribute__((used)) static int ene_set_tx_mask(struct rc_dev *rdev, u32 tx_mask)
{
 struct ene_device *dev = rdev->priv;
 dbg("TX: attempt to set transmitter mask %02x", tx_mask);


 if (!tx_mask || tx_mask & ~0x03) {
  dbg("TX: invalid mask");

  return 2;
 }

 dev->transmitter_mask = tx_mask;
 ene_tx_set_transmitters(dev);
 return 0;
}
