
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int type ;
struct vc_data {int vc_cursor_type; int vc_x; int vc_y; TYPE_1__* vc_sw; scalar_t__ vc_pos; } ;
struct TYPE_2__ {int (* con_putc ) (struct vc_data*,int,int ,int ) ;} ;


 scalar_t__ DO_UPDATE (struct vc_data*) ;
 int scr_readw (int *) ;
 int scr_writew (int,int *) ;
 int softcursor_original ;
 int stub1 (struct vc_data*,int,int ,int ) ;

__attribute__((used)) static void add_softcursor(struct vc_data *vc)
{
 int i = scr_readw((u16 *) vc->vc_pos);
 u32 type = vc->vc_cursor_type;

 if (! (type & 0x10)) return;
 if (softcursor_original != -1) return;
 softcursor_original = i;
 i |= ((type >> 8) & 0xff00 );
 i ^= ((type) & 0xff00 );
 if ((type & 0x20) && ((softcursor_original & 0x7000) == (i & 0x7000))) i ^= 0x7000;
 if ((type & 0x40) && ((i & 0x700) == ((i & 0x7000) >> 4))) i ^= 0x0700;
 scr_writew(i, (u16 *) vc->vc_pos);
 if (DO_UPDATE(vc))
  vc->vc_sw->con_putc(vc, i, vc->vc_y, vc->vc_x);
}
