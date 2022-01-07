
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int direct_dword; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int STATUS_DIRECT_DWORD ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,int *) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t store_direct_dword(struct device *d,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct ipw_priv *priv = dev_get_drvdata(d);

 sscanf(buf, "%x", &priv->direct_dword);
 priv->status |= STATUS_DIRECT_DWORD;
 return strnlen(buf, count);
}
