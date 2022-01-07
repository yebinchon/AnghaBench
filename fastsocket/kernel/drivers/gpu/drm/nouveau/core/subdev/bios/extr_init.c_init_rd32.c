
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_init {int subdev; } ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 int init_nvreg (struct nvbios_init*,int) ;
 int nv_rd32 (int ,int) ;

__attribute__((used)) static u32
init_rd32(struct nvbios_init *init, u32 reg)
{
 reg = init_nvreg(init, reg);
 if (init_exec(init))
  return nv_rd32(init->subdev, reg);
 return 0x00000000;
}
