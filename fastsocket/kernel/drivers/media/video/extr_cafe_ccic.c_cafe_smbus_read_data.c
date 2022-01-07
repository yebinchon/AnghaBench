
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;
struct cafe_camera {int dev_lock; int smbus_wait; } ;


 int CAFE_SMBUS_TIMEOUT ;
 int EIO ;
 int REG_TWSIC0 ;
 int REG_TWSIC1 ;
 unsigned int TWSIC0_CLKDIV ;
 unsigned int TWSIC0_EN ;
 unsigned int TWSIC0_OVMAGIC ;
 unsigned int TWSIC0_SID ;
 unsigned int TWSIC0_SID_SHIFT ;
 unsigned int TWSIC1_ADDR ;
 unsigned int TWSIC1_ADDR_SHIFT ;
 unsigned int TWSIC1_ERROR ;
 unsigned int TWSIC1_READ ;
 unsigned int TWSIC1_RVALID ;
 unsigned int cafe_reg_read (struct cafe_camera*,int ) ;
 int cafe_reg_write (struct cafe_camera*,int ,unsigned int) ;
 int cafe_smbus_read_done (struct cafe_camera*) ;
 int cam_err (struct cafe_camera*,char*,unsigned int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int cafe_smbus_read_data(struct cafe_camera *cam,
  u16 addr, u8 command, u8 *value)
{
 unsigned int rval;
 unsigned long flags;

 spin_lock_irqsave(&cam->dev_lock, flags);
 rval = TWSIC0_EN | ((addr << TWSIC0_SID_SHIFT) & TWSIC0_SID);
 rval |= TWSIC0_OVMAGIC;



 rval |= TWSIC0_CLKDIV;
 cafe_reg_write(cam, REG_TWSIC0, rval);
 (void) cafe_reg_read(cam, REG_TWSIC1);
 rval = TWSIC1_READ | ((command << TWSIC1_ADDR_SHIFT) & TWSIC1_ADDR);
 cafe_reg_write(cam, REG_TWSIC1, rval);
 spin_unlock_irqrestore(&cam->dev_lock, flags);

 wait_event_timeout(cam->smbus_wait,
   cafe_smbus_read_done(cam), CAFE_SMBUS_TIMEOUT);
 spin_lock_irqsave(&cam->dev_lock, flags);
 rval = cafe_reg_read(cam, REG_TWSIC1);
 spin_unlock_irqrestore(&cam->dev_lock, flags);

 if (rval & TWSIC1_ERROR) {
  cam_err(cam, "SMBUS read (%02x/%02x) error\n", addr, command);
  return -EIO;
 }
 if (! (rval & TWSIC1_RVALID)) {
  cam_err(cam, "SMBUS read (%02x/%02x) timed out\n", addr,
    command);
  return -EIO;
 }
 *value = rval & 0xff;
 return 0;
}
