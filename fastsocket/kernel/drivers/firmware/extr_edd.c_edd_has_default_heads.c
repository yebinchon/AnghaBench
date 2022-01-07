
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_default_heads; } ;
struct edd_info {TYPE_1__ params; } ;
struct edd_device {int dummy; } ;


 struct edd_info* edd_dev_get_info (struct edd_device*) ;

__attribute__((used)) static int
edd_has_default_heads(struct edd_device *edev)
{
 struct edd_info *info;
 if (!edev)
  return 0;
 info = edd_dev_get_info(edev);
 if (!info)
  return 0;
 return info->params.num_default_heads > 0;
}
