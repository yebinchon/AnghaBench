
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mISDNdevice {int nrbchan; int channelmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mISDNdevice* dev_to_mISDN (struct device*) ;
 scalar_t__ test_channelmap (int,int ) ;

__attribute__((used)) static ssize_t _show_channelmap(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct mISDNdevice *mdev = dev_to_mISDN(dev);
 char *bp = buf;
 int i;

 for (i = 0; i <= mdev->nrbchan; i++)
  *bp++ = test_channelmap(i, mdev->channelmap) ? '1' : '0';

 return bp - buf;
}
