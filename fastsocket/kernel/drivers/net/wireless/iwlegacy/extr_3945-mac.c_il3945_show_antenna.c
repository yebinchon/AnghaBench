
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int antenna; } ;


 int EAGAIN ;
 struct il_priv* dev_get_drvdata (struct device*) ;
 TYPE_1__ il3945_mod_params ;
 int il_is_alive (struct il_priv*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
il3945_show_antenna(struct device *d, struct device_attribute *attr, char *buf)
{
 struct il_priv *il = dev_get_drvdata(d);

 if (!il_is_alive(il))
  return -EAGAIN;

 return sprintf(buf, "%d\n", il3945_mod_params.antenna);
}
