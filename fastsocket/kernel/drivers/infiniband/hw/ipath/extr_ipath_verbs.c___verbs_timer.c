
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int verbs_timer; int verbs_dev; } ;


 int ipath_ib_timer (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void __verbs_timer(unsigned long arg)
{
 struct ipath_devdata *dd = (struct ipath_devdata *) arg;


 ipath_ib_timer(dd->verbs_dev);

 mod_timer(&dd->verbs_timer, jiffies + 1);
}
