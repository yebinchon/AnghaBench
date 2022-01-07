
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int jogdial; int wireless; } ;


 int TC1100_INSTANCE_JOGDIAL ;
 int TC1100_INSTANCE_WIRELESS ;
 int set_state (int *,int ) ;
 TYPE_1__ suspend_data ;

__attribute__((used)) static int tc1100_resume(struct platform_device *dev)
{
 int ret;

 ret = set_state(&suspend_data.wireless, TC1100_INSTANCE_WIRELESS);
 if (ret)
  return ret;

 ret = set_state(&suspend_data.jogdial, TC1100_INSTANCE_JOGDIAL);
 if (ret)
  return ret;

 return ret;
}
