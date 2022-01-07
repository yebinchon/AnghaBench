
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivi_fh {unsigned char** bars; TYPE_1__* fmt; } ;
struct TYPE_2__ {int fourcc; } ;
__attribute__((used)) static void gen_twopix(struct vivi_fh *fh, unsigned char *buf, int colorpos)
{
 unsigned char r_y, g_u, b_v;
 unsigned char *p;
 int color;

 r_y = fh->bars[colorpos][0];
 g_u = fh->bars[colorpos][1];
 b_v = fh->bars[colorpos][2];

 for (color = 0; color < 4; color++) {
  p = buf + color;

  switch (fh->fmt->fourcc) {
  case 128:
   switch (color) {
   case 0:
   case 2:
    *p = r_y;
    break;
   case 1:
    *p = g_u;
    break;
   case 3:
    *p = b_v;
    break;
   }
   break;
  case 129:
   switch (color) {
   case 1:
   case 3:
    *p = r_y;
    break;
   case 0:
    *p = g_u;
    break;
   case 2:
    *p = b_v;
    break;
   }
   break;
  case 131:
   switch (color) {
   case 0:
   case 2:
    *p = (g_u << 5) | b_v;
    break;
   case 1:
   case 3:
    *p = (r_y << 3) | (g_u >> 3);
    break;
   }
   break;
  case 130:
   switch (color) {
   case 0:
   case 2:
    *p = (r_y << 3) | (g_u >> 3);
    break;
   case 1:
   case 3:
    *p = (g_u << 5) | b_v;
    break;
   }
   break;
  case 133:
   switch (color) {
   case 0:
   case 2:
    *p = (g_u << 5) | b_v;
    break;
   case 1:
   case 3:
    *p = (r_y << 2) | (g_u >> 3);
    break;
   }
   break;
  case 132:
   switch (color) {
   case 0:
   case 2:
    *p = (r_y << 2) | (g_u >> 3);
    break;
   case 1:
   case 3:
    *p = (g_u << 5) | b_v;
    break;
   }
   break;
  }
 }
}
