
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;


 scalar_t__ md_raid5_congested (struct mddev*,int) ;
 scalar_t__ mddev_congested (struct mddev*,int) ;

__attribute__((used)) static int raid5_congested(void *data, int bits)
{
 struct mddev *mddev = data;

 return mddev_congested(mddev, bits) ||
  md_raid5_congested(mddev, bits);
}
