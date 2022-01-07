
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvbios_init {int crtc; int execute; int * outp; int offset; struct nouveau_bios* bios; struct nouveau_subdev* subdev; } ;
struct nouveau_subdev {int dummy; } ;
struct nouveau_bios {int dummy; } ;


 int init_script (struct nouveau_bios*,int) ;
 int init_unknown_script (struct nouveau_bios*) ;
 struct nouveau_bios* nouveau_bios (struct nouveau_subdev*) ;
 int nv_info (struct nouveau_bios*,char*) ;
 int nvbios_exec (struct nvbios_init*) ;

int
nvbios_init(struct nouveau_subdev *subdev, bool execute)
{
 struct nouveau_bios *bios = nouveau_bios(subdev);
 int ret = 0;
 int i = -1;
 u16 data;

 if (execute)
  nv_info(bios, "running init tables\n");
 while (!ret && (data = (init_script(bios, ++i)))) {
  struct nvbios_init init = {
   .subdev = subdev,
   .bios = bios,
   .offset = data,
   .outp = ((void*)0),
   .crtc = -1,
   .execute = execute ? 1 : 0,
  };

  ret = nvbios_exec(&init);
 }




 if (!ret && (data = init_unknown_script(bios))) {
  struct nvbios_init init = {
   .subdev = subdev,
   .bios = bios,
   .offset = data,
   .outp = ((void*)0),
   .crtc = -1,
   .execute = execute ? 1 : 0,
  };

  ret = nvbios_exec(&init);
 }

 return 0;
}
