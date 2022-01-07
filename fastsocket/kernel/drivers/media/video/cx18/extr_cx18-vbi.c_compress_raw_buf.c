
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int count; } ;
struct cx18 {TYPE_1__ vbi; } ;


 int memcpy (int*,int*,int) ;
 int memset (int*,int,int) ;
 int* raw_vbi_sav_rp ;
 int vbi_active_samples ;

__attribute__((used)) static u32 compress_raw_buf(struct cx18 *cx, u8 *buf, u32 size, u32 hdr_size)
{
 u32 line_size = vbi_active_samples;
 u32 lines = cx->vbi.count * 2;
 u8 *q = buf;
 u8 *p;
 int i;


 buf += hdr_size;

 for (i = 0; i < lines; i++) {
  p = buf + i * line_size;


  if (p[0] != 0xff || p[1] || p[2] ||
      (p[3] != raw_vbi_sav_rp[0] &&
       p[3] != raw_vbi_sav_rp[1]))
   break;
  if (i == lines - 1) {

   memcpy(q, p + 4, line_size - 4 - hdr_size);
   q += line_size - 4 - hdr_size;
   p += line_size - hdr_size - 1;
   memset(q, (int) *p, hdr_size);
  } else {
   memcpy(q, p + 4, line_size - 4);
   q += line_size - 4;
  }
 }
 return lines * (line_size - 4);
}
