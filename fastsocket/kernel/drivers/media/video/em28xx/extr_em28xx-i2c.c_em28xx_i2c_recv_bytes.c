
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int,unsigned char,char*,int) ;scalar_t__ (* em28xx_read_reg ) (struct em28xx*,int) ;} ;


 int ENODEV ;
 int em28xx_warn (char*,int) ;
 int stub1 (struct em28xx*,int,unsigned char,char*,int) ;
 scalar_t__ stub2 (struct em28xx*,int) ;

__attribute__((used)) static int em28xx_i2c_recv_bytes(struct em28xx *dev, unsigned char addr,
     char *buf, int len)
{
 int ret;
 ret = dev->em28xx_read_reg_req_len(dev, 2, addr, buf, len);
 if (ret < 0) {
  em28xx_warn("reading i2c device failed (error=%i)\n", ret);
  return ret;
 }
 if (dev->em28xx_read_reg(dev, 0x5) != 0)
  return -ENODEV;
 return ret;
}
