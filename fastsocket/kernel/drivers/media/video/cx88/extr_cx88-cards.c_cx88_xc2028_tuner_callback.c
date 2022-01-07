
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx88_core {int boardnr; int input; } ;
struct TYPE_2__ {int type; } ;
 int EINVAL ;
 TYPE_1__ INPUT (int ) ;
 int MO_GP0_IO ;
 int MO_GP1_IO ;
 int MO_GP2_IO ;

 int cx88_dvico_xc2028_callback (struct cx88_core*,int,int) ;
 int cx88_pv_8000gt_callback (struct cx88_core*,int,int) ;
 int cx88_xc3028_geniatech_tuner_callback (struct cx88_core*,int,int) ;
 int cx88_xc3028_winfast1800h_callback (struct cx88_core*,int,int) ;
 int cx_write (int ,int) ;
 int info_printk (struct cx88_core*,char*) ;
 int mdelay (int) ;

__attribute__((used)) static int cx88_xc2028_tuner_callback(struct cx88_core *core,
          int command, int arg)
{

 switch (core->boardnr) {
 case 135:
 case 137:
 case 136:
  return cx88_xc3028_geniatech_tuner_callback(core,
       command, arg);
 case 134:
 case 133:
  return cx88_pv_8000gt_callback(core, command, arg);
 case 138:
 case 139:
  return cx88_dvico_xc2028_callback(core, command, arg);
 case 131:
 case 132:
  return cx88_xc3028_winfast1800h_callback(core, command, arg);
 }

 switch (command) {
 case 128:
  switch (INPUT(core->input).type) {
  case 130:
   info_printk(core, "setting GPIO to radio!\n");
   cx_write(MO_GP0_IO, 0x4ff);
   mdelay(250);
   cx_write(MO_GP2_IO, 0xff);
   mdelay(250);
   break;
  case 129:
  default:
   info_printk(core, "setting GPIO to TV!\n");
   break;
  }
  cx_write(MO_GP1_IO, 0x101010);
  mdelay(250);
  cx_write(MO_GP1_IO, 0x101000);
  mdelay(250);
  cx_write(MO_GP1_IO, 0x101010);
  mdelay(250);
  return 0;
 }
 return -EINVAL;
}
