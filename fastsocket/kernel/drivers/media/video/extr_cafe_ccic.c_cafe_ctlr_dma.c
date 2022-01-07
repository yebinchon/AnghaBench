
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int nbufs; int * dma_handles; } ;


 int C1_TWOBUFS ;
 int REG_CTRL1 ;
 int REG_UBAR ;
 int REG_Y0BAR ;
 int REG_Y1BAR ;
 int REG_Y2BAR ;
 int cafe_reg_clear_bit (struct cafe_camera*,int ,int ) ;
 int cafe_reg_set_bit (struct cafe_camera*,int ,int ) ;
 int cafe_reg_write (struct cafe_camera*,int ,int ) ;

__attribute__((used)) static void cafe_ctlr_dma(struct cafe_camera *cam)
{






 cafe_reg_write(cam, REG_Y0BAR, cam->dma_handles[0]);
 cafe_reg_write(cam, REG_Y1BAR, cam->dma_handles[1]);
 if (cam->nbufs > 2) {
  cafe_reg_write(cam, REG_Y2BAR, cam->dma_handles[2]);
  cafe_reg_clear_bit(cam, REG_CTRL1, C1_TWOBUFS);
 }
 else
  cafe_reg_set_bit(cam, REG_CTRL1, C1_TWOBUFS);
 cafe_reg_write(cam, REG_UBAR, 0);
}
