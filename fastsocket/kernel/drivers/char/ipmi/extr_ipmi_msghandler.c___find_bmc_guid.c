
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmc_device {int guid; } ;


 struct bmc_device* dev_get_drvdata (struct device*) ;
 scalar_t__ memcmp (int ,unsigned char*,int) ;

__attribute__((used)) static int __find_bmc_guid(struct device *dev, void *data)
{
 unsigned char *id = data;
 struct bmc_device *bmc = dev_get_drvdata(dev);
 return memcmp(bmc->guid, id, 16) == 0;
}
