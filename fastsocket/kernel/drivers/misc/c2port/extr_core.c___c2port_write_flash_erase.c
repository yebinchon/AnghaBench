
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct c2port_device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ C2PORT_COMMAND_OK ;
 int C2PORT_DEVICE_ERASE ;
 int C2PORT_FPDAT ;
 int EBUSY ;
 int c2port_poll_in_busy (struct c2port_device*) ;
 int c2port_poll_out_ready (struct c2port_device*) ;
 int c2port_read_dr (struct c2port_device*,scalar_t__*) ;
 int c2port_write_ar (struct c2port_device*,int ) ;
 int c2port_write_dr (struct c2port_device*,int) ;

__attribute__((used)) static ssize_t __c2port_write_flash_erase(struct c2port_device *dev)
{
 u8 status;
 int ret;




 c2port_write_ar(dev, C2PORT_FPDAT);


 c2port_write_dr(dev, C2PORT_DEVICE_ERASE);


 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;




 ret = c2port_poll_out_ready(dev);
 if (ret < 0)
  return ret;


 ret = c2port_read_dr(dev, &status);
 if (ret < 0)
  return ret;
 if (status != C2PORT_COMMAND_OK)
  return -EBUSY;






 c2port_write_dr(dev, 0xde);
 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;
 c2port_write_dr(dev, 0xad);
 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;
 c2port_write_dr(dev, 0xa5);
 ret = c2port_poll_in_busy(dev);
 if (ret < 0)
  return ret;

 ret = c2port_poll_out_ready(dev);
 if (ret < 0)
  return ret;

 return 0;
}
