
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int rx8025_set_clock_adjust (struct device*,int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t rx8025_sysfs_store_clock_adjust(struct device *dev,
            struct device_attribute *attr,
            const char *buf, size_t count)
{
 int adj, err;

 if (sscanf(buf, "%i", &adj) != 1)
  return -EINVAL;

 err = rx8025_set_clock_adjust(dev, adj);

 return err ? err : count;
}
