
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111_dev {scalar_t__ devid; } ;
struct sa1111 {scalar_t__ base; } ;


 int EINVAL ;
 scalar_t__ SA1111_DEVID_SAC ;
 scalar_t__ SA1111_SKAUD ;
 int __sa1111_pll_clock (struct sa1111*) ;
 struct sa1111* sa1111_chip_driver (struct sa1111_dev*) ;
 int sa1111_readl (scalar_t__) ;

int sa1111_get_audio_rate(struct sa1111_dev *sadev)
{
 struct sa1111 *sachip = sa1111_chip_driver(sadev);
 unsigned long div;

 if (sadev->devid != SA1111_DEVID_SAC)
  return -EINVAL;

 div = sa1111_readl(sachip->base + SA1111_SKAUD) + 1;

 return __sa1111_pll_clock(sachip) / (256 * div);
}
