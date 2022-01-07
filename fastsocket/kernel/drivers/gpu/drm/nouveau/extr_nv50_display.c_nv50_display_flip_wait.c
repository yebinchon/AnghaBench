
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nv50_display_flip {TYPE_2__* chan; TYPE_1__* disp; } ;
struct TYPE_4__ {int addr; scalar_t__ data; } ;
struct TYPE_3__ {int sync; } ;


 scalar_t__ nouveau_bo_rd32 (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool
nv50_display_flip_wait(void *data)
{
 struct nv50_display_flip *flip = data;
 if (nouveau_bo_rd32(flip->disp->sync, flip->chan->addr / 4) ==
           flip->chan->data)
  return 1;
 usleep_range(1, 2);
 return 0;
}
