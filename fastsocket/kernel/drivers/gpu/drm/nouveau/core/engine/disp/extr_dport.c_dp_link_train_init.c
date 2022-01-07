
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvbios_init {int execute; int offset; int crtc; int outp; int bios; int subdev; } ;
struct TYPE_2__ {int * script; } ;
struct dp_state {TYPE_1__ info; int head; int outp; int disp; } ;


 int nouveau_bios (int ) ;
 int nv_subdev (int ) ;
 int nvbios_exec (struct nvbios_init*) ;

__attribute__((used)) static void
dp_link_train_init(struct dp_state *dp, bool spread)
{
 struct nvbios_init init = {
  .subdev = nv_subdev(dp->disp),
  .bios = nouveau_bios(dp->disp),
  .outp = dp->outp,
  .crtc = dp->head,
  .execute = 1,
 };


 if (spread)
  init.offset = dp->info.script[2];
 else
  init.offset = dp->info.script[3];
 nvbios_exec(&init);


 init.offset = dp->info.script[0];
 nvbios_exec(&init);
}
