
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmbdata {unsigned long device_connect_time; unsigned long function_pending_time; unsigned long device_disconnect_time; unsigned long elapsed_time; } ;
typedef int ssize_t ;


 int EAGAIN ;
 int ENODEV ;
 int cmf_readall (int ,struct cmbdata*) ;
 int sprintf (char*,char*,...) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t cmb_show_avg_utilization(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct cmbdata data;
 u64 utilization;
 unsigned long t, u;
 int ret;

 ret = cmf_readall(to_ccwdev(dev), &data);
 if (ret == -EAGAIN || ret == -ENODEV)

  return sprintf(buf, "n/a\n");
 else if (ret)
  return ret;

 utilization = data.device_connect_time +
        data.function_pending_time +
        data.device_disconnect_time;


 while (-1ul < (data.elapsed_time | utilization)) {
  utilization >>= 8;
  data.elapsed_time >>= 8;
 }


 t = (unsigned long) data.elapsed_time / 1000;
 u = (unsigned long) utilization / t;

 return sprintf(buf, "%02ld.%01ld%%\n", u/ 10, u - (u/ 10) * 10);
}
