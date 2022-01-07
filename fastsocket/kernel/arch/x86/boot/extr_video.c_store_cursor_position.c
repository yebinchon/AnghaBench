
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct biosregs {int ah; int dh; int dl; } ;
struct TYPE_3__ {int orig_y; int orig_x; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;


 TYPE_2__ boot_params ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static void store_cursor_position(void)
{
 struct biosregs ireg, oreg;

 initregs(&ireg);
 ireg.ah = 0x03;
 intcall(0x10, &ireg, &oreg);

 boot_params.screen_info.orig_x = oreg.dl;
 boot_params.screen_info.orig_y = oreg.dh;
}
