
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr_device {int enabled; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int FCOE_CTLR_ENABLED_MAX_NAMELEN ;
 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 char* get_fcoe_ctlr_enabled_state_name (int ) ;
 int snprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t show_ctlr_enabled_state(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct fcoe_ctlr_device *ctlr = dev_to_ctlr(dev);
 const char *name;

 name = get_fcoe_ctlr_enabled_state_name(ctlr->enabled);
 if (!name)
  return -EINVAL;
 return snprintf(buf, FCOE_CTLR_ENABLED_MAX_NAMELEN,
   "%s\n", name);
}
