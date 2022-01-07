
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int* name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef int ssize_t ;


 scalar_t__ ATTRCMP (int ) ;
 int ENOENT ;
 int SYS_WAKEMSK_GPIO (int) ;
 int SYS_WAKEMSK_M2 ;
 int db1x_pm_last_wakesrc ;
 int db1x_pm_sleep_secs ;
 int db1x_pm_wakemsk ;
 int gpio0 ;
 int gpio1 ;
 int gpio2 ;
 int gpio3 ;
 int gpio4 ;
 int gpio5 ;
 int gpio6 ;
 int gpio7 ;
 int sprintf (char*,char*,int) ;
 int timer ;
 int timer_timeout ;
 int wakemsk ;
 int wakesrc ;

__attribute__((used)) static ssize_t db1x_pmattr_show(struct kobject *kobj,
    struct kobj_attribute *attr,
    char *buf)
{
 int idx;

 if (ATTRCMP(timer_timeout))
  return sprintf(buf, "%lu\n", db1x_pm_sleep_secs);

 else if (ATTRCMP(timer))
  return sprintf(buf, "%u\n",
    !!(db1x_pm_wakemsk & SYS_WAKEMSK_M2));

 else if (ATTRCMP(wakesrc))
  return sprintf(buf, "%lu\n", db1x_pm_last_wakesrc);

 else if (ATTRCMP(gpio0) || ATTRCMP(gpio1) || ATTRCMP(gpio2) ||
   ATTRCMP(gpio3) || ATTRCMP(gpio4) || ATTRCMP(gpio5) ||
   ATTRCMP(gpio6) || ATTRCMP(gpio7)) {
  idx = (attr->attr.name)[4] - '0';
  return sprintf(buf, "%d\n",
   !!(db1x_pm_wakemsk & SYS_WAKEMSK_GPIO(idx)));

 } else if (ATTRCMP(wakemsk)) {
  return sprintf(buf, "%08lx\n", db1x_pm_wakemsk);
 }

 return -ENOENT;
}
