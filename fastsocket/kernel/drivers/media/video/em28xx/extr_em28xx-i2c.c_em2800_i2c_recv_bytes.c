
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int,int,char*,int) ;} ;


 int em2800_i2c_check_for_device (struct em28xx*,unsigned char) ;
 int em28xx_warn (char*,unsigned char,int) ;
 int stub1 (struct em28xx*,int,int,char*,int) ;

__attribute__((used)) static int em2800_i2c_recv_bytes(struct em28xx *dev, unsigned char addr,
     char *buf, int len)
{
 int ret;

 ret = em2800_i2c_check_for_device(dev, addr);
 if (ret) {
  em28xx_warn
      ("preparing read at i2c address 0x%x failed (error=%i)\n",
       addr, ret);
  return ret;
 }
 ret = dev->em28xx_read_reg_req_len(dev, 0x0, 0x3, buf, len);
 if (ret < 0) {
  em28xx_warn("reading from i2c device at 0x%x failed (error=%i)",
       addr, ret);
  return ret;
 }
 return ret;
}
