
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int* boardcfg; } ;


 int IBM_MP2_DISP_DLY ;
 int IBM_MP2_DISP_MODE ;
 int NTSCFirstActive ;
 scalar_t__ NewCard ;
 int PALFirstActive ;
 int SAA7146_NUM_LINE_BYTE1 ;
 int VIDEO_MODE_NTSC ;
 int VIDEO_MODE_PAL ;
 int XILINX_CTL0 ;
 int debNormal ;
 int debiwrite (struct saa7146*,int ,int ,int,int) ;
 int initialize_saa7121 (struct saa7146*,int) ;
 int mdelay (int) ;
 int saawrite (int,int ) ;

__attribute__((used)) static void set_out_format(struct saa7146 *saa, int mode)
{
 initialize_saa7121(saa, (mode == VIDEO_MODE_NTSC ? 0 : 1));
 saa->boardcfg[2] = mode;


 if (mode == VIDEO_MODE_PAL) {
  debiwrite(saa, debNormal, XILINX_CTL0, 0x0808, 2);
  mdelay(50);
  saawrite(0x012002c0, SAA7146_NUM_LINE_BYTE1);
  if (NewCard) {
   debiwrite(saa, debNormal, IBM_MP2_DISP_MODE, 0xe100, 2);
   mdelay(50);
  }
  debiwrite(saa, debNormal, IBM_MP2_DISP_MODE,
     NewCard ? 0xe500 : 0x6500, 2);
  debiwrite(saa, debNormal, IBM_MP2_DISP_DLY,
     (1 << 8) |
     (NewCard ? PALFirstActive : PALFirstActive - 6), 2);
 } else {
  debiwrite(saa, debNormal, XILINX_CTL0, 0x0800, 2);
  mdelay(50);
  saawrite(0x00f002c0, SAA7146_NUM_LINE_BYTE1);
  debiwrite(saa, debNormal, IBM_MP2_DISP_MODE,
     NewCard ? 0xe100 : 0x6100, 2);
  debiwrite(saa, debNormal, IBM_MP2_DISP_DLY,
     (1 << 8) |
     (NewCard ? NTSCFirstActive : NTSCFirstActive - 6), 2);
 }
}
