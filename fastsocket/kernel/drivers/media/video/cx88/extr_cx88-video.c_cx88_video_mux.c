
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ audio_chip; } ;
struct cx88_core {unsigned int input; int tvaudio; TYPE_1__ board; } ;
struct TYPE_4__ {int vmux; int gpio0; int gpio1; int gpio2; int gpio3; int type; scalar_t__ audioroute; } ;


 int AUD_CTL ;
 int AUD_I2SCNTL ;
 int CX88_VMUX_CABLE ;

 int CX88_VMUX_TELEVISION ;
 int EN_I2SIN_ENABLE ;
 TYPE_2__ INPUT (unsigned int) ;
 int MO_AFECFG_IO ;
 int MO_FILTER_EVEN ;
 int MO_FILTER_ODD ;
 int MO_GP0_IO ;
 int MO_GP1_IO ;
 int MO_GP2_IO ;
 int MO_GP3_IO ;
 int MO_INPUT_FORMAT ;
 scalar_t__ V4L2_IDENT_WM8775 ;
 int WW_I2SADC ;
 int audio ;
 int call_all (struct cx88_core*,int ,int ,scalar_t__,int ,int ) ;
 int cx88_set_tvaudio (struct cx88_core*) ;
 int cx_andor (int ,int,int) ;
 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int dprintk (int,char*,unsigned int,int,int,int,int,int) ;
 int s_routing ;

int cx88_video_mux(struct cx88_core *core, unsigned int input)
{


 dprintk(1,"video_mux: %d [vmux=%d,gpio=0x%x,0x%x,0x%x,0x%x]\n",
  input, INPUT(input).vmux,
  INPUT(input).gpio0,INPUT(input).gpio1,
  INPUT(input).gpio2,INPUT(input).gpio3);
 core->input = input;
 cx_andor(MO_INPUT_FORMAT, 0x03 << 14, INPUT(input).vmux << 14);
 cx_write(MO_GP3_IO, INPUT(input).gpio3);
 cx_write(MO_GP0_IO, INPUT(input).gpio0);
 cx_write(MO_GP1_IO, INPUT(input).gpio1);
 cx_write(MO_GP2_IO, INPUT(input).gpio2);

 switch (INPUT(input).type) {
 case 128:
  cx_set(MO_AFECFG_IO, 0x00000001);
  cx_set(MO_INPUT_FORMAT, 0x00010010);
  cx_set(MO_FILTER_EVEN, 0x00002020);
  cx_set(MO_FILTER_ODD, 0x00002020);
  break;
 default:
  cx_clear(MO_AFECFG_IO, 0x00000001);
  cx_clear(MO_INPUT_FORMAT, 0x00010010);
  cx_clear(MO_FILTER_EVEN, 0x00002020);
  cx_clear(MO_FILTER_ODD, 0x00002020);
  break;
 }



 if (INPUT(input).audioroute) {



  if (core->board.audio_chip &&
      core->board.audio_chip == V4L2_IDENT_WM8775) {
   call_all(core, audio, s_routing,
     INPUT(input).audioroute, 0, 0);
  }



  if (INPUT(input).type != CX88_VMUX_TELEVISION &&
      INPUT(input).type != CX88_VMUX_CABLE) {

   core->tvaudio = WW_I2SADC;
   cx88_set_tvaudio(core);
  } else {

   cx_write(AUD_I2SCNTL, 0x0);
   cx_clear(AUD_CTL, EN_I2SIN_ENABLE);
  }
 }

 return 0;
}
