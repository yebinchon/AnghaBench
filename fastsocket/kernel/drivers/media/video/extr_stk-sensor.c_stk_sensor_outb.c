
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk_camera {int dummy; } ;


 int MAX_RETRIES ;
 int STK_ERROR (char*,int) ;
 int STK_IIC_OP ;
 int STK_IIC_OP_TX ;
 int STK_IIC_STAT ;
 int STK_IIC_STAT_TX_OK ;
 int STK_IIC_TX_INDEX ;
 int STK_IIC_TX_VALUE ;
 scalar_t__ stk_camera_read_reg (struct stk_camera*,int ,int*) ;
 scalar_t__ stk_camera_write_reg (struct stk_camera*,int ,int ) ;

__attribute__((used)) static int stk_sensor_outb(struct stk_camera *dev, u8 reg, u8 val)
{
 int i = 0;
 int tmpval = 0;

 if (stk_camera_write_reg(dev, STK_IIC_TX_INDEX, reg))
  return 1;
 if (stk_camera_write_reg(dev, STK_IIC_TX_VALUE, val))
  return 1;
 if (stk_camera_write_reg(dev, STK_IIC_OP, STK_IIC_OP_TX))
  return 1;
 do {
  if (stk_camera_read_reg(dev, STK_IIC_STAT, &tmpval))
   return 1;
  i++;
 } while (tmpval == 0 && i < MAX_RETRIES);
 if (tmpval != STK_IIC_STAT_TX_OK) {
  if (tmpval)
   STK_ERROR("stk_sensor_outb failed, status=0x%02x\n",
    tmpval);
  return 1;
 } else
  return 0;
}
