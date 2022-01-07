
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dev_lock; } ;


 int C0_ENABLE ;
 int C1_PWRDWN ;
 int CLK_DIV_MASK ;
 int GCSR_CCIC_EN ;
 int GCSR_MRC ;
 int GCSR_MRS ;
 int GCSR_SRC ;
 int GCSR_SRS ;
 int GIMSK_CCIC_EN ;
 int REG_CLKCTRL ;
 int REG_CTRL0 ;
 int REG_CTRL1 ;
 int REG_GL_CSR ;
 int REG_GL_IMASK ;
 int REG_IRQMASK ;
 int cafe_reg_clear_bit (struct cafe_camera*,int ,int ) ;
 int cafe_reg_set_bit (struct cafe_camera*,int ,int ) ;
 int cafe_reg_write (struct cafe_camera*,int,int) ;
 int cafe_reg_write_mask (struct cafe_camera*,int ,int,int ) ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cafe_ctlr_init(struct cafe_camera *cam)
{
 unsigned long flags;

 spin_lock_irqsave(&cam->dev_lock, flags);



 cafe_reg_write(cam, 0x3038, 0x8);
 cafe_reg_write(cam, 0x315c, 0x80008);






 cafe_reg_write(cam, REG_GL_CSR, GCSR_SRS|GCSR_MRS);
 cafe_reg_write(cam, REG_GL_CSR, GCSR_SRC|GCSR_MRC);
 cafe_reg_write(cam, REG_GL_CSR, GCSR_SRC|GCSR_MRS);



 spin_unlock_irqrestore(&cam->dev_lock, flags);
 msleep(5);
 spin_lock_irqsave(&cam->dev_lock, flags);

 cafe_reg_write(cam, REG_GL_CSR, GCSR_CCIC_EN|GCSR_SRC|GCSR_MRC);
 cafe_reg_set_bit(cam, REG_GL_IMASK, GIMSK_CCIC_EN);



 cafe_reg_clear_bit(cam, REG_CTRL1, C1_PWRDWN);




 cafe_reg_clear_bit(cam, REG_CTRL0, C0_ENABLE);



 cafe_reg_write(cam, REG_IRQMASK, 0);




 cafe_reg_write_mask(cam, REG_CLKCTRL, 2, CLK_DIV_MASK);
 spin_unlock_irqrestore(&cam->dev_lock, flags);
}
