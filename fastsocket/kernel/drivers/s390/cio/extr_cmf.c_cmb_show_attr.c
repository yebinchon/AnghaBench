
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum cmb_index { ____Placeholder_cmb_index } cmb_index ;


 scalar_t__ cmf_read (int ,int) ;
 int sprintf (char*,char*,unsigned long long) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t cmb_show_attr(struct device *dev, char *buf, enum cmb_index idx)
{
 return sprintf(buf, "%lld\n",
  (unsigned long long) cmf_read(to_ccwdev(dev), idx));
}
