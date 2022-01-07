
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {unsigned int vc_rows; unsigned int vc_y; scalar_t__ vc_need_wrap; int vc_bottom; } ;


 int scrdown (struct vc_data*,unsigned int,int ,unsigned int) ;

__attribute__((used)) static void csi_L(struct vc_data *vc, unsigned int nr)
{
 if (nr > vc->vc_rows - vc->vc_y)
  nr = vc->vc_rows - vc->vc_y;
 else if (!nr)
  nr = 1;
 scrdown(vc, vc->vc_y, vc->vc_bottom, nr);
 vc->vc_need_wrap = 0;
}
