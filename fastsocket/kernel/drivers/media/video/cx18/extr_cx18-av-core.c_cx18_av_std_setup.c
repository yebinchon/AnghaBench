
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u64 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int std; int slicer_line_delay; int slicer_line_offset; struct v4l2_subdev sd; } ;
struct cx18 {struct cx18_av_state av_state; } ;


 int CX18_DEBUG_INFO_DEV (struct v4l2_subdev*,char*,int const,int const,...) ;
 int V4L2_STD_625_50 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_Nc ;
 int cx18_av_read (struct cx18*,int) ;
 int cx18_av_read4 (struct cx18*,int) ;
 int cx18_av_write (struct cx18*,int,int) ;
 int do_div (int,int const) ;

void cx18_av_std_setup(struct cx18 *cx)
{
 struct cx18_av_state *state = &cx->av_state;
 struct v4l2_subdev *sd = &state->sd;
 v4l2_std_id std = state->std;





 const int src_decimation = 0x21f;

 int hblank, hactive, burst, vblank, vactive, sc;
 int vblank656;
 int luma_lpf, uv_lpf, comb;
 u32 pll_int, pll_frac, pll_post;


 if (std & ~V4L2_STD_NTSC)
  cx18_av_write(cx, 0x49f, 0x11);
 else
  cx18_av_write(cx, 0x49f, 0x14);
 if (std & V4L2_STD_625_50) {
  vblank656 = 48;
  vblank = 38;
  vactive = 579;
  hblank = 132;
  hactive = 720;
  burst = 93;
  luma_lpf = 2;
  if (std & V4L2_STD_PAL) {
   uv_lpf = 1;
   comb = 0x20;

   sc = 688700;
  } else if (std == V4L2_STD_PAL_Nc) {
   uv_lpf = 1;
   comb = 0x20;

   sc = 556422;
  } else {
   uv_lpf = 0;
   comb = 0;


   sc = 672314;
  }
 } else {
  vblank656 = 38;
  vblank = 26;
  vactive = 481;
  hactive = 720;
  hblank = 122;
  luma_lpf = 1;
  uv_lpf = 1;
  if (std == V4L2_STD_PAL_60) {
   burst = 90;
   luma_lpf = 2;
   comb = 0x20;

   sc = 688700;
  } else if (std == V4L2_STD_PAL_M) {

   burst = 97;
   comb = 0x20;

   sc = 555421;
  } else {
   burst = 90;
   comb = 0x66;

   sc = 556032;
  }
 }


 pll_int = cx18_av_read(cx, 0x108);
 pll_frac = cx18_av_read4(cx, 0x10c) & 0x1ffffff;
 pll_post = cx18_av_read(cx, 0x109);
 CX18_DEBUG_INFO_DEV(sd, "PLL regs = int: %u, frac: %u, post: %u\n",
       pll_int, pll_frac, pll_post);

 if (pll_post) {
  int fsc, pll;
  u64 tmp;

  pll = (28636360L * ((((u64)pll_int) << 25) + pll_frac)) >> 25;
  pll /= pll_post;
  CX18_DEBUG_INFO_DEV(sd, "Video PLL = %d.%06d MHz\n",
        pll / 1000000, pll % 1000000);
  CX18_DEBUG_INFO_DEV(sd, "Pixel rate = %d.%06d Mpixel/sec\n",
        pll / 8000000, (pll / 8) % 1000000);

  CX18_DEBUG_INFO_DEV(sd, "ADC XTAL/pixel clock decimation ratio "
        "= %d.%03d\n", src_decimation / 256,
        ((src_decimation % 256) * 1000) / 256);

  tmp = 28636360 * (u64) sc;
  do_div(tmp, src_decimation);
  fsc = tmp >> 13;
  CX18_DEBUG_INFO_DEV(sd,
        "Chroma sub-carrier initial freq = %d.%06d "
        "MHz\n", fsc / 1000000, fsc % 1000000);

  CX18_DEBUG_INFO_DEV(sd, "hblank %i, hactive %i, vblank %i, "
        "vactive %i, vblank656 %i, src_dec %i, "
        "burst 0x%02x, luma_lpf %i, uv_lpf %i, "
        "comb 0x%02x, sc 0x%06x\n",
        hblank, hactive, vblank, vactive, vblank656,
        src_decimation, burst, luma_lpf, uv_lpf,
        comb, sc);
 }


 cx18_av_write(cx, 0x470, hblank);
 cx18_av_write(cx, 0x471, 0xff & (((hblank >> 8) & 0x3) |
      (hactive << 4)));
 cx18_av_write(cx, 0x472, hactive >> 4);


 cx18_av_write(cx, 0x473, burst);


 cx18_av_write(cx, 0x474, vblank);
 cx18_av_write(cx, 0x475, 0xff & (((vblank >> 8) & 0x3) |
      (vactive << 4)));
 cx18_av_write(cx, 0x476, vactive >> 4);
 cx18_av_write(cx, 0x477, vblank656);


 cx18_av_write(cx, 0x478, 0xff & src_decimation);
 cx18_av_write(cx, 0x479, 0xff & (src_decimation >> 8));


 cx18_av_write(cx, 0x47a, luma_lpf << 6 | ((uv_lpf << 4) & 0x30));


 cx18_av_write(cx, 0x47b, comb);


 cx18_av_write(cx, 0x47c, sc);
 cx18_av_write(cx, 0x47d, 0xff & sc >> 8);
 cx18_av_write(cx, 0x47e, 0xff & sc >> 16);

 if (std & V4L2_STD_625_50) {
  state->slicer_line_delay = 1;
  state->slicer_line_offset = (6 + state->slicer_line_delay - 2);
 } else {
  state->slicer_line_delay = 0;
  state->slicer_line_offset = (10 + state->slicer_line_delay - 2);
 }
 cx18_av_write(cx, 0x47f, state->slicer_line_delay);
}
