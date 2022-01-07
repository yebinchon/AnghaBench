
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvbios_init {int crtc; int subdev; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int nv_rdport (int ,int ,int ) ;

__attribute__((used)) static u8
init_rdport(struct nvbios_init *init, u16 port)
{
 if (init_exec(init))
  return nv_rdport(init->subdev, init->crtc, port);
 return 0x00;
}
