
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vga_modes ;
struct mode_info {int dummy; } ;
struct biosregs {int ax; int bl; int al; int bx; } ;
typedef int ega_modes ;
typedef int cga_modes ;
struct TYPE_4__ {int orig_video_isVGA; int orig_video_ega_bx; } ;
struct TYPE_6__ {TYPE_1__ screen_info; } ;
struct TYPE_5__ {char const* card_name; struct mode_info* modes; } ;


 size_t ADAPTER_CGA ;
 size_t ADAPTER_EGA ;
 size_t ADAPTER_VGA ;
 size_t adapter ;
 TYPE_3__ boot_params ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

 TYPE_2__ video_vga ;

__attribute__((used)) static int vga_probe(void)
{
 static const char *card_name[] = {
  "CGA/MDA/HGC", "EGA", "VGA"
 };
 static struct mode_info *mode_lists[] = {
  130,
  129,
  128,
 };
 static int mode_count[] = {
  sizeof(130)/sizeof(struct mode_info),
  sizeof(129)/sizeof(struct mode_info),
  sizeof(128)/sizeof(struct mode_info),
 };

 struct biosregs ireg, oreg;

 initregs(&ireg);

 ireg.ax = 0x1200;
 ireg.bl = 0x10;
 intcall(0x10, &ireg, &oreg);


 boot_params.screen_info.orig_video_ega_bx = oreg.bx;



 if (oreg.bl != 0x10) {

  ireg.ax = 0x1a00;
  intcall(0x10, &ireg, &oreg);

  if (oreg.al == 0x1a) {
   adapter = ADAPTER_VGA;

   boot_params.screen_info.orig_video_isVGA = 1;

  } else {
   adapter = ADAPTER_EGA;
  }
 } else {
  adapter = ADAPTER_CGA;
 }

 video_vga.modes = mode_lists[adapter];
 video_vga.card_name = card_name[adapter];
 return mode_count[adapter];
}
