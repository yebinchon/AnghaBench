
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int ipw_read_reg32 (struct ipw_priv*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_mem_gpio_reg(struct device *d,
     struct device_attribute *attr, char *buf)
{
 u32 reg = 0;
 struct ipw_priv *p = dev_get_drvdata(d);

 reg = ipw_read_reg32(p, 0x301100);
 return sprintf(buf, "0x%08x\n", reg);
}
