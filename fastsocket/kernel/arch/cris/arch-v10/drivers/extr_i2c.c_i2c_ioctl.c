
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int D (int ) ;
 int EINVAL ;
 scalar_t__ ETRAXI2C_IOCTYPE ;
 int I2C_ARGREG (unsigned long) ;
 int I2C_ARGSLAVE (unsigned long) ;
 int I2C_ARGVALUE (unsigned long) ;


 int _IOC_NR (unsigned int) ;
 scalar_t__ _IOC_TYPE (unsigned int) ;
 unsigned char i2c_readreg (int ,int ) ;
 int i2c_writereg (int ,int ,int ) ;
 int printk (char*,unsigned char,...) ;

__attribute__((used)) static int
i2c_ioctl(struct inode *inode, struct file *file,
   unsigned int cmd, unsigned long arg)
{
 if(_IOC_TYPE(cmd) != ETRAXI2C_IOCTYPE) {
  return -EINVAL;
 }

 switch (_IOC_NR(cmd)) {
  case 128:

   D(printk("i2cw %d %d %d\n",
     I2C_ARGSLAVE(arg),
     I2C_ARGREG(arg),
     I2C_ARGVALUE(arg)));

   return i2c_writereg(I2C_ARGSLAVE(arg),
         I2C_ARGREG(arg),
         I2C_ARGVALUE(arg));
  case 129:
  {
   unsigned char val;

   D(printk("i2cr %d %d ",
    I2C_ARGSLAVE(arg),
    I2C_ARGREG(arg)));
   val = i2c_readreg(I2C_ARGSLAVE(arg), I2C_ARGREG(arg));
   D(printk("= %d\n", val));
   return val;
  }
  default:
   return -EINVAL;

 }

 return 0;
}
