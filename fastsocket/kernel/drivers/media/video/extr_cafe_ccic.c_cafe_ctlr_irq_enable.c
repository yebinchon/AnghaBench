
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dummy; } ;


 int FRAMEIRQS ;
 int REG_IRQMASK ;
 int REG_IRQSTAT ;
 int cafe_reg_set_bit (struct cafe_camera*,int ,int ) ;
 int cafe_reg_write (struct cafe_camera*,int ,int ) ;

__attribute__((used)) static void cafe_ctlr_irq_enable(struct cafe_camera *cam)
{




 cafe_reg_write(cam, REG_IRQSTAT, FRAMEIRQS);
 cafe_reg_set_bit(cam, REG_IRQMASK, FRAMEIRQS);
}
