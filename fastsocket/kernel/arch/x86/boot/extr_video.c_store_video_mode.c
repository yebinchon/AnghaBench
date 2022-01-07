
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct biosregs {int ah; int al; int bh; } ;
struct TYPE_3__ {int orig_video_mode; int orig_video_page; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;


 TYPE_2__ boot_params ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static void store_video_mode(void)
{
 struct biosregs ireg, oreg;



 initregs(&ireg);
 ireg.ah = 0x0f;
 intcall(0x10, &ireg, &oreg);


 boot_params.screen_info.orig_video_mode = oreg.al & 0x7f;
 boot_params.screen_info.orig_video_page = oreg.bh;
}
