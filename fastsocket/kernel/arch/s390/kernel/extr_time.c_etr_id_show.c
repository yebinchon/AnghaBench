
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
struct TYPE_4__ {int etr_id; } ;
struct TYPE_3__ {int v1; } ;
struct etr_aib {TYPE_2__ edf1; TYPE_1__ slsw; } ;
typedef int ssize_t ;


 int ENODATA ;
 struct etr_aib* etr_aib_from_dev (struct sys_device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t etr_id_show(struct sys_device *dev,
   struct sysdev_attribute *attr, char *buf)
{
 struct etr_aib *aib = etr_aib_from_dev(dev);

 if (!aib || !aib->slsw.v1)
  return -ENODATA;
 return sprintf(buf, "%i\n", aib->edf1.etr_id);
}
