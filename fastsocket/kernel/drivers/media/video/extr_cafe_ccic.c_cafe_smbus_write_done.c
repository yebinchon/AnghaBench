
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dev_lock; } ;


 int REG_TWSIC1 ;
 int TWSIC1_ERROR ;
 int TWSIC1_WSTAT ;
 int cafe_reg_read (struct cafe_camera*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int cafe_smbus_write_done(struct cafe_camera *cam)
{
 unsigned long flags;
 int c1;






 udelay(20);
 spin_lock_irqsave(&cam->dev_lock, flags);
 c1 = cafe_reg_read(cam, REG_TWSIC1);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
 return (c1 & (TWSIC1_WSTAT|TWSIC1_ERROR)) != TWSIC1_WSTAT;
}
