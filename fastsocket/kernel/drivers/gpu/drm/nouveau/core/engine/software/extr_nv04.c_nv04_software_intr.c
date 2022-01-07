
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_subdev {int dummy; } ;


 int nv_mask (struct nouveau_subdev*,int,int,int) ;

void
nv04_software_intr(struct nouveau_subdev *subdev)
{
 nv_mask(subdev, 0x000100, 0x80000000, 0x00000000);
}
