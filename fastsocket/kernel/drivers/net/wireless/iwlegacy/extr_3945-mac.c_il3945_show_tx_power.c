
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int tx_power_user_lmt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct il_priv* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
il3945_show_tx_power(struct device *d, struct device_attribute *attr, char *buf)
{
 struct il_priv *il = dev_get_drvdata(d);
 return sprintf(buf, "%d\n", il->tx_power_user_lmt);
}
