
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {int txmask; } ;


 int EINVAL ;
 int RXMASK_LEARNING ;
 int RXMASK_REGULAR ;
 int dprintk (char*,int) ;

__attribute__((used)) static int loop_set_tx_mask(struct rc_dev *dev, u32 mask)
{
 struct loopback_dev *lodev = dev->priv;

 if ((mask & (RXMASK_REGULAR | RXMASK_LEARNING)) != mask) {
  dprintk("invalid tx mask: %u\n", mask);
  return -EINVAL;
 }

 dprintk("setting tx mask: %u\n", mask);
 lodev->txmask = mask;
 return 0;
}
