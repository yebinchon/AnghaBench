
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int casetemp; } ;


 int sprintf (char*,char*,int,int) ;
 TYPE_1__ x ;

__attribute__((used)) static ssize_t
show_case_temperature( struct device *dev, struct device_attribute *attr, char *buf )
{
 return sprintf(buf, "%d.%d\n", x.casetemp>>8, (x.casetemp & 255)*10/256 );
}
