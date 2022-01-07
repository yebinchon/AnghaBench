
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int type; } ;


 TYPE_1__ ipl_info ;
 char* ipl_type_str (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t ipl_type_show(struct kobject *kobj, struct kobj_attribute *attr,
        char *page)
{
 return sprintf(page, "%s\n", ipl_type_str(ipl_info.type));
}
