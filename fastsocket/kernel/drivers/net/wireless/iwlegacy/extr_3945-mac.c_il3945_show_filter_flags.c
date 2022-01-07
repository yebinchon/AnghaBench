
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter_flags; } ;
struct il_priv {TYPE_1__ active; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct il_priv* dev_get_drvdata (struct device*) ;
 int le32_to_cpu (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
il3945_show_filter_flags(struct device *d, struct device_attribute *attr,
    char *buf)
{
 struct il_priv *il = dev_get_drvdata(d);

 return sprintf(buf, "0x%04X\n", le32_to_cpu(il->active.filter_flags));
}
