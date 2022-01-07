
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {scalar_t__ status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EAGAIN ;
 struct il_priv* dev_get_drvdata (struct device*) ;
 int il_is_alive (struct il_priv*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
il3945_show_status(struct device *d, struct device_attribute *attr, char *buf)
{
 struct il_priv *il = dev_get_drvdata(d);
 if (!il_is_alive(il))
  return -EAGAIN;
 return sprintf(buf, "0x%08x\n", (int)il->status);
}
