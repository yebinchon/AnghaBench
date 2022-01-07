
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct biosregs {int ax; int di; int es; } ;
struct TYPE_3__ {int vesapm_off; int vesapm_seg; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;


 TYPE_2__ boot_params ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;

__attribute__((used)) static void vesa_store_pm_info(void)
{
 struct biosregs ireg, oreg;

 initregs(&ireg);
 ireg.ax = 0x4f0a;
 intcall(0x10, &ireg, &oreg);

 if (oreg.ax != 0x004f)
  return;

 boot_params.screen_info.vesapm_seg = oreg.es;
 boot_params.screen_info.vesapm_off = oreg.di;
}
