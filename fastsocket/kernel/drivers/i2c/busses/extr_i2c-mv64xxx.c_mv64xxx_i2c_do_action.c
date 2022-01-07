
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct mv64xxx_i2c_data {int action; int cntl_bits; int addr1; int addr2; int waitq; int block; scalar_t__ reg_base; int rc; TYPE_2__ adapter; int byte_posn; TYPE_1__* msg; } ;
struct TYPE_3__ {int* buf; } ;


 int EIO ;
 scalar_t__ MV64XXX_I2C_REG_CONTROL ;
 int MV64XXX_I2C_REG_CONTROL_INTEN ;
 int MV64XXX_I2C_REG_CONTROL_START ;
 int MV64XXX_I2C_REG_CONTROL_STOP ;
 scalar_t__ MV64XXX_I2C_REG_DATA ;
 int dev_err (int *,char*,int) ;
 void* readl (scalar_t__) ;
 int wake_up_interruptible (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
mv64xxx_i2c_do_action(struct mv64xxx_i2c_data *drv_data)
{
 switch(drv_data->action) {
 case 136:
  writel(drv_data->cntl_bits,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  break;

 case 129:
  writel(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_START,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  break;

 case 132:
  writel(drv_data->addr1,
   drv_data->reg_base + MV64XXX_I2C_REG_DATA);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  break;

 case 131:
  writel(drv_data->addr2,
   drv_data->reg_base + MV64XXX_I2C_REG_DATA);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  break;

 case 130:
  writel(drv_data->msg->buf[drv_data->byte_posn++],
   drv_data->reg_base + MV64XXX_I2C_REG_DATA);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  break;

 case 134:
  drv_data->msg->buf[drv_data->byte_posn++] =
   readl(drv_data->reg_base + MV64XXX_I2C_REG_DATA);
  writel(drv_data->cntl_bits,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  break;

 case 133:
  drv_data->msg->buf[drv_data->byte_posn++] =
   readl(drv_data->reg_base + MV64XXX_I2C_REG_DATA);
  drv_data->cntl_bits &= ~MV64XXX_I2C_REG_CONTROL_INTEN;
  writel(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_STOP,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  drv_data->block = 0;
  wake_up_interruptible(&drv_data->waitq);
  break;

 case 135:
 default:
  dev_err(&drv_data->adapter.dev,
   "mv64xxx_i2c_do_action: Invalid action: %d\n",
   drv_data->action);
  drv_data->rc = -EIO;

 case 128:
  drv_data->cntl_bits &= ~MV64XXX_I2C_REG_CONTROL_INTEN;
  writel(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_STOP,
   drv_data->reg_base + MV64XXX_I2C_REG_CONTROL);
  drv_data->block = 0;
  wake_up_interruptible(&drv_data->waitq);
  break;
 }
}
