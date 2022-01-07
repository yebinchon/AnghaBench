
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2port_device {int flash_access; int access; } ;
typedef int ssize_t ;


 int C2PORT_FPCTL ;
 int EBUSY ;
 int c2port_write_ar (struct c2port_device*,int ) ;
 int c2port_write_dr (struct c2port_device*,int) ;
 int mdelay (int) ;

__attribute__((used)) static ssize_t __c2port_store_flash_access(struct c2port_device *dev,
      int status)
{
 int ret;


 if (!dev->access)
  return -EBUSY;

 dev->flash_access = !!status;


 if (dev->flash_access == 0)
  return 0;



 c2port_write_ar(dev, C2PORT_FPCTL);


 ret = c2port_write_dr(dev, 0x02);
 if (ret < 0)
  return ret;


 ret = c2port_write_dr(dev, 0x01);
 if (ret < 0)
  return ret;



 mdelay(25);

 return 0;
}
