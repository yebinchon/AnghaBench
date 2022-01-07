
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; } ;
struct ptp_clock_request {TYPE_1__ extts; int type; } ;
struct ptp_clock_info {scalar_t__ n_ext_ts; int (* enable ) (struct ptp_clock_info*,struct ptp_clock_request*,int) ;} ;
struct ptp_clock {struct ptp_clock_info* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 int PTP_CLK_REQ_EXTTS ;
 struct ptp_clock* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,scalar_t__*,int*) ;
 int stub1 (struct ptp_clock_info*,struct ptp_clock_request*,int) ;

__attribute__((used)) static ssize_t extts_enable_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct ptp_clock *ptp = dev_get_drvdata(dev);
 struct ptp_clock_info *ops = ptp->info;
 struct ptp_clock_request req = { .type = PTP_CLK_REQ_EXTTS };
 int cnt, enable;
 int err = -EINVAL;

 cnt = sscanf(buf, "%u %d", &req.extts.index, &enable);
 if (cnt != 2)
  goto out;
 if (req.extts.index >= ops->n_ext_ts)
  goto out;

 err = ops->enable(ops, &req, enable ? 1 : 0);
 if (err)
  goto out;

 return count;
out:
 return err;
}
