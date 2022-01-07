
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_sliced_vbi_format {int ** service_lines; } ;


 int select_service_from_set (int,int,int ,int) ;

__attribute__((used)) static int check_service_set(struct v4l2_sliced_vbi_format *fmt, int is_pal)
{
 int f, l;
 u16 set = 0;

 for (f = 0; f < 2; f++) {
  for (l = 0; l < 24; l++) {
   fmt->service_lines[f][l] = select_service_from_set(f, l, fmt->service_lines[f][l], is_pal);
   set |= fmt->service_lines[f][l];
  }
 }
 return set != 0;
}
