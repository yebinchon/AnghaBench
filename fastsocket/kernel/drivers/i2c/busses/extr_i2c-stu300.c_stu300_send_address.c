
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stu300_dev {scalar_t__ virtbase; TYPE_1__* pdev; } ;
struct i2c_msg {int flags; int addr; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ I2C_CR ;
 int I2C_CR_PERIPHERAL_ENABLE ;
 scalar_t__ I2C_DR ;
 int I2C_DR_D_MASK ;
 int I2C_M_RD ;
 int I2C_M_TEN ;
 int STU300_EVENT_6 ;
 int STU300_EVENT_9 ;
 int dev_dbg (int *,char*) ;
 int stu300_await_event (struct stu300_dev*,int ) ;
 int stu300_r8 (scalar_t__) ;
 int stu300_wr8 (int,scalar_t__) ;

__attribute__((used)) static int stu300_send_address(struct stu300_dev *dev,
     struct i2c_msg *msg, int resend)
{
 u32 val;
 int ret;

 if (msg->flags & I2C_M_TEN)

  val = (0xf0 | (((u32) msg->addr & 0x300) >> 7)) &
   I2C_DR_D_MASK;
 else
  val = ((msg->addr << 1) & I2C_DR_D_MASK);

 if (msg->flags & I2C_M_RD) {

  val |= 0x01;
  if (resend)
   dev_dbg(&dev->pdev->dev, "read resend\n");
 } else if (resend)
  dev_dbg(&dev->pdev->dev, "write resend\n");
 stu300_wr8(val, dev->virtbase + I2C_DR);


 if (msg->flags & I2C_M_TEN) {
  ret = stu300_await_event(dev, STU300_EVENT_9);




  val = msg->addr & I2C_DR_D_MASK;

  stu300_wr8(val, dev->virtbase + I2C_DR);
  if (ret != 0)
   return ret;
 }




 if (resend)
  dev_dbg(&dev->pdev->dev, "await event 6\n");
 ret = stu300_await_event(dev, STU300_EVENT_6);





 val = stu300_r8(dev->virtbase + I2C_CR);
 val |= I2C_CR_PERIPHERAL_ENABLE;
 stu300_wr8(val, dev->virtbase + I2C_CR);

 return ret;
}
