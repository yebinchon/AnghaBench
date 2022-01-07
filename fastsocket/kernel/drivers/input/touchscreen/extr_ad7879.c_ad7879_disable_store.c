
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7879 {int dummy; } ;
typedef int ssize_t ;


 int ad7879_disable (struct ad7879*) ;
 int ad7879_enable (struct ad7879*) ;
 struct ad7879* dev_get_drvdata (struct device*) ;
 int strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t ad7879_disable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct ad7879 *ts = dev_get_drvdata(dev);
 unsigned long val;
 int error;

 error = strict_strtoul(buf, 10, &val);
 if (error)
  return error;

 if (val)
  ad7879_disable(ts);
 else
  ad7879_enable(ts);

 return count;
}
