
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IL_INFO (char*,char const*) ;
 struct il_priv* dev_get_drvdata (struct device*) ;
 int il3945_hw_reg_set_txpower (struct il_priv*,int ) ;
 int simple_strtoul (char*,char**,int) ;

__attribute__((used)) static ssize_t
il3945_store_tx_power(struct device *d, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct il_priv *il = dev_get_drvdata(d);
 char *p = (char *)buf;
 u32 val;

 val = simple_strtoul(p, &p, 10);
 if (p == buf)
  IL_INFO(": %s is not in decimal form.\n", buf);
 else
  il3945_hw_reg_set_txpower(il, val);

 return count;
}
