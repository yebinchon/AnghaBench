
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2port_device {int dummy; } ;
typedef int ssize_t ;


 int C2PORT_DEVICEID ;
 int c2port_read_dr (struct c2port_device*,int*) ;
 int c2port_write_ar (struct c2port_device*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t __c2port_show_dev_id(struct c2port_device *dev, char *buf)
{
 u8 data;
 int ret;


 c2port_write_ar(dev, C2PORT_DEVICEID);


 ret = c2port_read_dr(dev, &data);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", data);
}
