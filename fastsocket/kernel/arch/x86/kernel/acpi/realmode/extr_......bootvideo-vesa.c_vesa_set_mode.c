
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mode_info {int mode; int y; int x; } ;
struct biosregs {int ax; int cx; size_t di; int bx; } ;
struct TYPE_3__ {int mode_attr; } ;


 int VIDEO_FIRST_VESA ;
 int do_restore ;
 int force_x ;
 int force_y ;
 int graphic_mode ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;
 int memset (TYPE_1__*,int ,int) ;
 int vesa_store_mode_params_graphics () ;
 TYPE_1__ vminfo ;

__attribute__((used)) static int vesa_set_mode(struct mode_info *mode)
{
 struct biosregs ireg, oreg;
 int is_graphic;
 u16 vesa_mode = mode->mode - VIDEO_FIRST_VESA;

 memset(&vminfo, 0, sizeof vminfo);

 initregs(&ireg);
 ireg.ax = 0x4f01;
 ireg.cx = vesa_mode;
 ireg.di = (size_t)&vminfo;
 intcall(0x10, &ireg, &oreg);

 if (oreg.ax != 0x004f)
  return -1;

 if ((vminfo.mode_attr & 0x15) == 0x05) {

  is_graphic = 0;






 } else {
  return -1;
 }


 initregs(&ireg);
 ireg.ax = 0x4f02;
 ireg.bx = vesa_mode;
 intcall(0x10, &ireg, &oreg);

 if (oreg.ax != 0x004f)
  return -1;

 graphic_mode = is_graphic;
 if (!is_graphic) {

  force_x = mode->x;
  force_y = mode->y;
  do_restore = 1;
 } else {

  vesa_store_mode_params_graphics();
 }

 return 0;
}
