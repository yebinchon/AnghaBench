
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_link_width_active; int ipath_link_speed_active; int ipath_link_width_enabled; int ipath_link_speed_enabled; } ;


 int ENOTSUPP ;





__attribute__((used)) static int ipath_ht_get_ib_cfg(struct ipath_devdata *dd, int which)
{
 int ret;

 switch (which) {
 case 131:
  ret = dd->ipath_link_width_active;
  break;
 case 129:
  ret = dd->ipath_link_speed_active;
  break;
 case 130:
  ret = dd->ipath_link_width_enabled;
  break;
 case 128:
  ret = dd->ipath_link_speed_enabled;
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }
 return ret;
}
