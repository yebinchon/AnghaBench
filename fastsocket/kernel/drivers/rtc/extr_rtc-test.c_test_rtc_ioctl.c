
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENOIOCTLCMD ;







__attribute__((used)) static int test_rtc_ioctl(struct device *dev, unsigned int cmd,
 unsigned long arg)
{



 switch (cmd) {
 case 130:
 case 131:
 case 128:
 case 129:
 case 132:
 case 133:
  return 0;

 default:
  return -ENOIOCTLCMD;
 }
}
