
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int nasid; } ;
struct cx_dev {TYPE_1__ cx_id; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EPERM ;
 int TIOCX_CORELET ;
 int capable (int ) ;
 int simple_strtoul (char const*,int *,int ) ;
 int tio_corelet_reset (int ,int ) ;
 int tiocx_reload (struct cx_dev*) ;
 struct cx_dev* to_cx_dev (struct device*) ;

__attribute__((used)) static ssize_t store_cxdev_control(struct device *dev, struct device_attribute *attr, const char *buf,
       size_t count)
{
 int n;
 struct cx_dev *cx_dev = to_cx_dev(dev);

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (count <= 0)
  return 0;

 n = simple_strtoul(buf, ((void*)0), 0);

 switch (n) {
 case 1:
  tio_corelet_reset(cx_dev->cx_id.nasid, TIOCX_CORELET);
  tiocx_reload(cx_dev);
  break;
 case 2:
  tiocx_reload(cx_dev);
  break;
 case 3:
  tio_corelet_reset(cx_dev->cx_id.nasid, TIOCX_CORELET);
  break;
 default:
  break;
 }

 return count;
}
