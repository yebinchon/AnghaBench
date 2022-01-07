
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dummy; } ;


 int C0_ENABLE ;
 int REG_CTRL0 ;
 int cafe_reg_set_bit (struct cafe_camera*,int ,int ) ;

__attribute__((used)) static void cafe_ctlr_start(struct cafe_camera *cam)
{


 cafe_reg_set_bit(cam, REG_CTRL0, C0_ENABLE);
}
