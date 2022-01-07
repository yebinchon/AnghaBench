
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_decode_vbi_line {int* p; int line; int type; int is_second_field; } ;
struct cx25840_state {scalar_t__ vbi_line_offset; } ;


 int V4L2_SLICED_CAPTION_525 ;
 int V4L2_SLICED_TELETEXT_B ;
 int V4L2_SLICED_VPS ;
 int V4L2_SLICED_WSS_625 ;
 int decode_vps (int*,int*) ;
 int odd_parity (int) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;

int cx25840_decode_vbi_line(struct v4l2_subdev *sd, struct v4l2_decode_vbi_line *vbi)
{
 struct cx25840_state *state = to_state(sd);
 u8 *p = vbi->p;
 int id1, id2, l, err = 0;

 if (p[0] || p[1] != 0xff || p[2] != 0xff ||
   (p[3] != 0x55 && p[3] != 0x91)) {
  vbi->line = vbi->type = 0;
  return 0;
 }

 p += 4;
 id1 = p[-1];
 id2 = p[0] & 0xf;
 l = p[2] & 0x3f;
 l += state->vbi_line_offset;
 p += 4;

 switch (id2) {
 case 1:
  id2 = V4L2_SLICED_TELETEXT_B;
  break;
 case 4:
  id2 = V4L2_SLICED_WSS_625;
  break;
 case 6:
  id2 = V4L2_SLICED_CAPTION_525;
  err = !odd_parity(p[0]) || !odd_parity(p[1]);
  break;
 case 9:
  id2 = V4L2_SLICED_VPS;
  if (decode_vps(p, p) != 0)
   err = 1;
  break;
 default:
  id2 = 0;
  err = 1;
  break;
 }

 vbi->type = err ? 0 : id2;
 vbi->line = err ? 0 : l;
 vbi->is_second_field = err ? 0 : (id1 == 0x55);
 vbi->p = p;
 return 0;
}
