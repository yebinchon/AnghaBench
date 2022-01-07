
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int psc0; int psc1; } ;
struct TYPE_4__ {TYPE_1__ esw; } ;


 int ENODATA ;
 TYPE_2__ etr_port0 ;
 struct sys_device etr_port0_dev ;
 int etr_port0_online ;
 int etr_port1_online ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t etr_mode_code_show(struct sys_device *dev,
    struct sysdev_attribute *attr, char *buf)
{
 if (!etr_port0_online && !etr_port1_online)

  return -ENODATA;
 return sprintf(buf, "%i\n", (dev == &etr_port0_dev) ?
         etr_port0.esw.psc0 : etr_port0.esw.psc1);
}
