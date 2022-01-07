
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u8 ;
struct cx18_av_state {int std; } ;
struct cx18 {struct cx18_av_state av_state; } ;


 int V4L2_STD_525_60 ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_STD_NTSC_M_KR ;
 int V4L2_STD_PAL ;
 int V4L2_STD_SECAM ;
 int cx18_av_and_or (struct cx18*,int,int,int) ;
 int cx18_av_read (struct cx18*,int) ;
 int cx18_av_write (struct cx18*,int,int) ;
 int cx18_av_write_expect (struct cx18*,int,int,int,int) ;

__attribute__((used)) static void input_change(struct cx18 *cx)
{
 struct cx18_av_state *state = &cx->av_state;
 v4l2_std_id std = state->std;
 u8 v;


 cx18_av_write(cx, 0x49f, (std & V4L2_STD_NTSC) ? 0x14 : 0x11);
 cx18_av_and_or(cx, 0x401, ~0x60, 0);
 cx18_av_and_or(cx, 0x401, ~0x60, 0x60);

 if (std & V4L2_STD_525_60) {
  if (std == V4L2_STD_NTSC_M_JP) {

   cx18_av_write_expect(cx, 0x808, 0xf7, 0xf7, 0xff);
   cx18_av_write_expect(cx, 0x80b, 0x02, 0x02, 0x3f);
  } else if (std == V4L2_STD_NTSC_M_KR) {

   cx18_av_write_expect(cx, 0x808, 0xf8, 0xf8, 0xff);
   cx18_av_write_expect(cx, 0x80b, 0x03, 0x03, 0x3f);
  } else {

   cx18_av_write_expect(cx, 0x808, 0xf6, 0xf6, 0xff);
   cx18_av_write_expect(cx, 0x80b, 0x01, 0x01, 0x3f);
  }
 } else if (std & V4L2_STD_PAL) {

  cx18_av_write_expect(cx, 0x808, 0xff, 0xff, 0xff);
  cx18_av_write_expect(cx, 0x80b, 0x03, 0x03, 0x3f);
 } else if (std & V4L2_STD_SECAM) {

  cx18_av_write_expect(cx, 0x808, 0xff, 0xff, 0xff);
  cx18_av_write_expect(cx, 0x80b, 0x03, 0x03, 0x3f);
 }

 v = cx18_av_read(cx, 0x803);
 if (v & 0x10) {

  v &= ~0x10;
  cx18_av_write_expect(cx, 0x803, v, v, 0x1f);
  v |= 0x10;
  cx18_av_write_expect(cx, 0x803, v, v, 0x1f);
 }
}
