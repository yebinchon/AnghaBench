
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {int txcarrier; } ;


 int dprintk (char*,int ) ;

__attribute__((used)) static int loop_set_tx_carrier(struct rc_dev *dev, u32 carrier)
{
 struct loopback_dev *lodev = dev->priv;

 dprintk("setting tx carrier: %u\n", carrier);
 lodev->txcarrier = carrier;
 return 0;
}
