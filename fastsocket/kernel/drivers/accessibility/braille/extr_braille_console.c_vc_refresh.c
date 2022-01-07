
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int vc_size_row; } ;


 int WIDTH ;
 int braille_write (int *) ;
 int inverse_translate (struct vc_data*,int ,int) ;
 int screen_glyph (struct vc_data*,int) ;
 int vc_x ;
 int vc_y ;

__attribute__((used)) static void vc_refresh(struct vc_data *vc)
{
 u16 buf[WIDTH];
 int i;

 for (i = 0; i < WIDTH; i++) {
  u16 glyph = screen_glyph(vc,
    2 * (vc_x + i) + vc_y * vc->vc_size_row);
  buf[i] = inverse_translate(vc, glyph, 1);
 }
 braille_write(buf);
}
