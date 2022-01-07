
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_ctlr_device {int enabled; TYPE_1__* f; int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* set_fcoe_ctlr_mode ) (struct fcoe_ctlr_device*) ;} ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENOTSUPP ;



 int FCOE_MAX_MODENAME_LEN ;
 int FIP_CONN_TYPE_UNKNOWN ;
 int LIBFCOE_SYSFS_DBG (struct fcoe_ctlr_device*,char*,...) ;
 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 int fcoe_parse_mode (char*) ;
 int strncpy (char*,char const*,size_t) ;
 int stub1 (struct fcoe_ctlr_device*) ;

__attribute__((used)) static ssize_t store_ctlr_mode(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct fcoe_ctlr_device *ctlr = dev_to_ctlr(dev);
 char mode[FCOE_MAX_MODENAME_LEN + 1];

 if (count > FCOE_MAX_MODENAME_LEN)
  return -EINVAL;

 strncpy(mode, buf, count);

 if (mode[count - 1] == '\n')
  mode[count - 1] = '\0';
 else
  mode[count] = '\0';

 switch (ctlr->enabled) {
 case 129:
  LIBFCOE_SYSFS_DBG(ctlr, "Cannot change mode when enabled.");
  return -EBUSY;
 case 130:
  if (!ctlr->f->set_fcoe_ctlr_mode) {
   LIBFCOE_SYSFS_DBG(ctlr,
       "Mode change not supported by LLD.");
   return -ENOTSUPP;
  }

  ctlr->mode = fcoe_parse_mode(mode);
  if (ctlr->mode == FIP_CONN_TYPE_UNKNOWN) {
   LIBFCOE_SYSFS_DBG(ctlr,
       "Unknown mode %s provided.", buf);
   return -EINVAL;
  }

  ctlr->f->set_fcoe_ctlr_mode(ctlr);
  LIBFCOE_SYSFS_DBG(ctlr, "Mode changed to %s.", buf);

  return count;
 case 128:
 default:
  LIBFCOE_SYSFS_DBG(ctlr, "Mode change not supported.");
  return -ENOTSUPP;
 };
}
