
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dummy; } ;


 int FRAMEIRQS ;
 int REG_IRQMASK ;
 int cafe_reg_clear_bit (struct cafe_camera*,int ,int ) ;

__attribute__((used)) static void cafe_ctlr_irq_disable(struct cafe_camera *cam)
{
 cafe_reg_clear_bit(cam, REG_IRQMASK, FRAMEIRQS);
}
