
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENOIOCTLCMD ;

__attribute__((used)) static int pl030_ioctl(struct device *dev, unsigned int cmd, unsigned long arg)
{
 return -ENOIOCTLCMD;
}
