
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dev_lock; } ;


 int REG_IRQMASK ;
 int TWSIIRQS ;
 int cafe_reg_set_bit (struct cafe_camera*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cafe_smbus_enable_irq(struct cafe_camera *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->dev_lock, flags);
 cafe_reg_set_bit(cam, REG_IRQMASK, TWSIIRQS);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
}
