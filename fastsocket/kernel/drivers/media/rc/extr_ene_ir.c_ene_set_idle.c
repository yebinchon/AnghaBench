
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int dummy; } ;


 int dbg (char*) ;
 int ene_rx_reset (struct ene_device*) ;

__attribute__((used)) static void ene_set_idle(struct rc_dev *rdev, bool idle)
{
 struct ene_device *dev = rdev->priv;

 if (idle) {
  ene_rx_reset(dev);
  dbg("RX: end of data");
 }
}
