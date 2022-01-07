
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct em28xx {int dummy; } ;


 int em28xx_read_reg_req_len (struct em28xx*,int,int ,int*,int) ;

int em28xx_read_reg_req(struct em28xx *dev, u8 req, u16 reg)
{
 int ret;
 u8 val;

 ret = em28xx_read_reg_req_len(dev, req, reg, &val, 1);
 if (ret < 0)
  return ret;

 return val;
}
