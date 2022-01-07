
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int dummy; } ;


 int EOPNOTSUPP ;

int __attribute__((weak)) ipath_enable_wc(struct ipath_devdata *dd)
{
 return -EOPNOTSUPP;
}
