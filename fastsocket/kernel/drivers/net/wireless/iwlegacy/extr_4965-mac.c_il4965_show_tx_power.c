
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int tx_power_user_lmt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct il_priv* dev_get_drvdata (struct device*) ;
 int il_is_ready_rf (struct il_priv*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
il4965_show_tx_power(struct device *d, struct device_attribute *attr, char *buf)
{
 struct il_priv *il = dev_get_drvdata(d);

 if (!il_is_ready_rf(il))
  return sprintf(buf, "off\n");
 else
  return sprintf(buf, "%d\n", il->tx_power_user_lmt);
}
