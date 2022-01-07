
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* input; } ;
struct cx88_core {int boardnr; TYPE_2__ board; } ;
struct TYPE_3__ {int gpio0; } ;
 int MO_GP0_IO ;
 int MO_GP1_IO ;
 int MO_GP2_IO ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int mdelay (int) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static void cx88_card_setup_pre_i2c(struct cx88_core *core)
{
 switch (core->boardnr) {
 case 135:







  cx_write(MO_GP0_IO, 0x0000ef88);
  udelay(1000);
  cx_clear(MO_GP0_IO, 0x00000088);
  udelay(50);
  cx_set(MO_GP0_IO, 0x00000088);
  udelay(1000);
  break;

 case 131:
 case 132:
  cx_write(MO_GP2_IO, 0xcf7);
  mdelay(50);
  cx_write(MO_GP2_IO, 0xef5);
  mdelay(50);
  cx_write(MO_GP2_IO, 0xcf7);
  msleep(10);
  break;

 case 136:

  cx_set(MO_GP0_IO, 0x00001010);
  break;

 case 134:
 case 133:

  cx_write(MO_GP0_IO, core->board.input[0].gpio0);
  udelay(1000);
  cx_clear(MO_GP0_IO, 0x00000080);
  udelay(50);
  cx_set(MO_GP0_IO, 0x00000080);
  udelay(1000);
  break;

 case 128:
 case 129:

  cx_set(MO_GP1_IO, 0x1010);
  mdelay(50);
  cx_clear(MO_GP1_IO, 0x10);
  mdelay(50);
  cx_set(MO_GP1_IO, 0x10);
  mdelay(50);
  break;

 case 130:
  cx_write(MO_GP0_IO, 0x00003230);
  cx_write(MO_GP0_IO, 0x00003210);
  msleep(1);
  cx_write(MO_GP0_IO, 0x00001230);
  break;
 }
}
