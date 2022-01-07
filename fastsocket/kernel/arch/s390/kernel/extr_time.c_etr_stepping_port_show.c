
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysdev_class {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int p; } ;
struct TYPE_4__ {TYPE_1__ esw; } ;


 TYPE_2__ etr_port0 ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t etr_stepping_port_show(struct sysdev_class *class, char *buf)
{
 return sprintf(buf, "%i\n", etr_port0.esw.p);
}
