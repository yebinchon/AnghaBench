
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IPW_INTERNAL_CMD_EVENT ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;
 int sscanf (char const*,char*,int *) ;
 int strnlen (char const*,size_t) ;

__attribute__((used)) static ssize_t store_command_event_reg(struct device *d,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 u32 reg;
 struct ipw_priv *p = dev_get_drvdata(d);

 sscanf(buf, "%x", &reg);
 ipw_write_reg32(p, IPW_INTERNAL_CMD_EVENT, reg);
 return strnlen(buf, count);
}
