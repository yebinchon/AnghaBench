
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int indirect_byte; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int STATUS_INDIRECT_BYTE ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,int *) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t store_indirect_byte(struct device *d,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct ipw_priv *priv = dev_get_drvdata(d);

 sscanf(buf, "%x", &priv->indirect_byte);
 priv->status |= STATUS_INDIRECT_BYTE;
 return strnlen(buf, count);
}
