
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvbios_init {int crtc; int subdev; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 scalar_t__ NV_50 ;
 scalar_t__ init_exec (struct nvbios_init*) ;
 TYPE_1__* nv_device (int ) ;
 int nv_wrvgai (int ,int,int,int,int) ;

__attribute__((used)) static void
init_wrvgai(struct nvbios_init *init, u16 port, u8 index, u8 value)
{

 if (nv_device(init->subdev)->card_type < NV_50) {
  if (port == 0x03d4 && index == 0x44)
   init->crtc = 0;
 }

 if (init_exec(init)) {
  int head = init->crtc < 0 ? 0 : init->crtc;
  nv_wrvgai(init->subdev, head, port, index, value);
 }


 if (nv_device(init->subdev)->card_type < NV_50) {
  if (port == 0x03d4 && index == 0x44 && value == 3)
   init->crtc = 1;
 }
}
