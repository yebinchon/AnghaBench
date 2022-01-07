
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dev_lock; int smbus_wait; } ;
typedef int irqreturn_t ;


 unsigned int ALLIRQS ;
 unsigned int FRAMEIRQS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REG_IRQSTAT ;
 unsigned int TWSIIRQS ;
 int cafe_frame_irq (struct cafe_camera*,unsigned int) ;
 unsigned int cafe_reg_read (struct cafe_camera*,int ) ;
 int cafe_reg_write (struct cafe_camera*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t cafe_irq(int irq, void *data)
{
 struct cafe_camera *cam = data;
 unsigned int irqs;

 spin_lock(&cam->dev_lock);
 irqs = cafe_reg_read(cam, REG_IRQSTAT);
 if ((irqs & ALLIRQS) == 0) {
  spin_unlock(&cam->dev_lock);
  return IRQ_NONE;
 }
 if (irqs & FRAMEIRQS)
  cafe_frame_irq(cam, irqs);
 if (irqs & TWSIIRQS) {
  cafe_reg_write(cam, REG_IRQSTAT, TWSIIRQS);
  wake_up(&cam->smbus_wait);
 }
 spin_unlock(&cam->dev_lock);
 return IRQ_HANDLED;
}
