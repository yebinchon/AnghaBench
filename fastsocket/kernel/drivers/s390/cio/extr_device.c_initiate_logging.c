
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sch_no; int ssid; } ;
struct subchannel {TYPE_1__ schid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int chsc_siosl (TYPE_1__) ;
 int pr_notice (char*,int ,int ) ;
 int pr_warning (char*,int ,int ,int) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static ssize_t
initiate_logging(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct subchannel *sch = to_subchannel(dev);
 int rc;

 rc = chsc_siosl(sch->schid);
 if (rc < 0) {
  pr_warning("Logging for subchannel 0.%x.%04x failed with "
      "errno=%d\n",
      sch->schid.ssid, sch->schid.sch_no, rc);
  return rc;
 }
 pr_notice("Logging for subchannel 0.%x.%04x was triggered\n",
    sch->schid.ssid, sch->schid.sch_no);
 return count;
}
