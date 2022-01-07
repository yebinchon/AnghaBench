
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;
struct device {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;


 struct ssb_device* dev_to_ssb_dev (struct device*) ;
 struct b43legacy_wldev* ssb_get_drvdata (struct ssb_device*) ;

__attribute__((used)) static inline
struct b43legacy_wldev *dev_to_b43legacy_wldev(struct device *dev)
{
 struct ssb_device *ssb_dev = dev_to_ssb_dev(dev);
 return ssb_get_drvdata(ssb_dev);
}
