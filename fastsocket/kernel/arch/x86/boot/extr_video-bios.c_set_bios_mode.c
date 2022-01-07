
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct biosregs {int al; int ah; int ax; } ;
struct TYPE_3__ {int orig_video_mode; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;


 TYPE_2__ boot_params ;
 int do_restore ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static int set_bios_mode(u8 mode)
{
 struct biosregs ireg, oreg;
 u8 new_mode;

 initregs(&ireg);
 ireg.al = mode;
 intcall(0x10, &ireg, ((void*)0));

 ireg.ah = 0x0f;
 intcall(0x10, &ireg, &oreg);

 do_restore = 1;


 new_mode = oreg.al & 0x7f;

 if (new_mode == mode)
  return 0;


 if (new_mode != boot_params.screen_info.orig_video_mode) {



  ireg.ax = boot_params.screen_info.orig_video_mode;
  intcall(0x10, &ireg, ((void*)0));
 }

 return -1;
}
