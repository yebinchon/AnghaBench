
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_target {int dummy; } ;
struct fw_unit {int device; } ;
struct device {int dummy; } ;


 struct sbp2_target* dev_get_drvdata (int *) ;
 struct fw_unit* fw_unit (struct device*) ;
 int sbp2_target_put (struct sbp2_target*) ;

__attribute__((used)) static int sbp2_remove(struct device *dev)
{
 struct fw_unit *unit = fw_unit(dev);
 struct sbp2_target *tgt = dev_get_drvdata(&unit->device);

 sbp2_target_put(tgt);
 return 0;
}
