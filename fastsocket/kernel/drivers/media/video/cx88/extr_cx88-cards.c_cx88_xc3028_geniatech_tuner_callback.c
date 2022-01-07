
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx88_core {int input; } ;
struct TYPE_2__ {int type; } ;




 int EINVAL ;
 TYPE_1__ INPUT (int ) ;
 int MO_GP1_IO ;

 int cx_write (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int cx88_xc3028_geniatech_tuner_callback(struct cx88_core *core,
      int command, int mode)
{
 switch (command) {
 case 128:
  switch (INPUT(core->input).type) {
  case 130:
   break;
  case 129:
   cx_write(MO_GP1_IO, 0x030302);
   mdelay(50);
   break;
  default:
   cx_write(MO_GP1_IO, 0x030301);
   mdelay(50);
  }
  cx_write(MO_GP1_IO, 0x101010);
  mdelay(50);
  cx_write(MO_GP1_IO, 0x101000);
  mdelay(50);
  cx_write(MO_GP1_IO, 0x101010);
  mdelay(50);
  return 0;
 }
 return -EINVAL;
}
