
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct TYPE_4__ {int devno; } ;
struct TYPE_5__ {TYPE_1__ fcp; } ;
struct ipl_parameter_block {TYPE_2__ ipl_info; } ;
typedef int ssize_t ;
struct TYPE_6__ {int type; } ;


 struct ipl_parameter_block* IPL_PARMBLOCK_START ;



 int ipl_devno ;
 TYPE_3__ ipl_info ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t sys_ipl_device_show(struct kobject *kobj,
       struct kobj_attribute *attr, char *page)
{
 struct ipl_parameter_block *ipl = IPL_PARMBLOCK_START;

 switch (ipl_info.type) {
 case 130:
  return sprintf(page, "0.0.%04x\n", ipl_devno);
 case 129:
 case 128:
  return sprintf(page, "0.0.%04x\n", ipl->ipl_info.fcp.devno);
 default:
  return 0;
 }
}
