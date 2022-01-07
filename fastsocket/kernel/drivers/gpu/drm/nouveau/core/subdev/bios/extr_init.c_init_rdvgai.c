
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvbios_init {scalar_t__ crtc; struct nouveau_subdev* subdev; } ;
struct nouveau_subdev {int dummy; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int nv_rdvgai (struct nouveau_subdev*,int,int ,int) ;

__attribute__((used)) static u8
init_rdvgai(struct nvbios_init *init, u16 port, u8 index)
{
 struct nouveau_subdev *subdev = init->subdev;
 if (init_exec(init)) {
  int head = init->crtc < 0 ? 0 : init->crtc;
  return nv_rdvgai(subdev, head, port, index);
 }
 return 0x00;
}
