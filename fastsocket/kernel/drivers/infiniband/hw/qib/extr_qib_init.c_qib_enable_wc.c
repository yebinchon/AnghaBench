
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int EOPNOTSUPP ;

int __attribute__((weak)) qib_enable_wc(struct qib_devdata *dd)
{
 return -EOPNOTSUPP;
}
