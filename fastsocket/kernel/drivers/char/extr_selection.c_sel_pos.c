
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int inverse_translate (int ,int ,int ) ;
 int screen_glyph (int ,int) ;
 int sel_cons ;
 int use_unicode ;

__attribute__((used)) static u16
sel_pos(int n)
{
 return inverse_translate(sel_cons, screen_glyph(sel_cons, n),
    use_unicode);
}
