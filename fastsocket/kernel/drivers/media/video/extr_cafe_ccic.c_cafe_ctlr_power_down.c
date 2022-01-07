
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dev_lock; } ;


 int C1_PWRDWN ;
 int GFCR_GPIO_ON ;
 int GGPIO_OUT ;
 int GPR_C0EN ;
 int GPR_C1 ;
 int GPR_C1EN ;
 int REG_CTRL1 ;
 int REG_GL_FCR ;
 int REG_GL_GPIOR ;
 int REG_GPR ;
 int cafe_reg_set_bit (struct cafe_camera*,int ,int ) ;
 int cafe_reg_write (struct cafe_camera*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cafe_ctlr_power_down(struct cafe_camera *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->dev_lock, flags);
 cafe_reg_write(cam, REG_GPR, GPR_C1EN|GPR_C0EN|GPR_C1);
 cafe_reg_write(cam, REG_GL_FCR, GFCR_GPIO_ON);
 cafe_reg_write(cam, REG_GL_GPIOR, GGPIO_OUT);
 cafe_reg_set_bit(cam, REG_CTRL1, C1_PWRDWN);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
}
