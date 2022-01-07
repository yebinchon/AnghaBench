
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int (* em28xx_write_regs_req ) (struct em28xx*,int,unsigned char,char*,short) ;} ;


 int stub1 (struct em28xx*,int,unsigned char,char*,short) ;

__attribute__((used)) static int em28xx_i2c_send_bytes(void *data, unsigned char addr, char *buf,
     short len, int stop)
{
 int wrcount = 0;
 struct em28xx *dev = (struct em28xx *)data;

 wrcount = dev->em28xx_write_regs_req(dev, stop ? 2 : 3, addr, buf, len);

 return wrcount;
}
