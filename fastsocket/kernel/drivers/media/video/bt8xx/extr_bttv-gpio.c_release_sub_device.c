
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bttv_sub_device {int dummy; } ;


 int kfree (struct bttv_sub_device*) ;
 struct bttv_sub_device* to_bttv_sub_dev (struct device*) ;

__attribute__((used)) static void release_sub_device(struct device *dev)
{
 struct bttv_sub_device *sub = to_bttv_sub_dev(dev);
 kfree(sub);
}
