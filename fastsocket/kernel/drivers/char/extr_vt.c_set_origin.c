
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {unsigned long vc_origin; unsigned long vc_visible_origin; int vc_pos; int vc_size_row; int vc_y; int vc_x; scalar_t__ vc_screenbuf_size; scalar_t__ vc_scr_end; scalar_t__ vc_screenbuf; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_set_origin ) (struct vc_data*) ;} ;


 int CON_IS_VISIBLE (struct vc_data*) ;
 int WARN_CONSOLE_UNLOCKED () ;
 int stub1 (struct vc_data*) ;

__attribute__((used)) static void set_origin(struct vc_data *vc)
{
 WARN_CONSOLE_UNLOCKED();

 if (!CON_IS_VISIBLE(vc) ||
     !vc->vc_sw->con_set_origin ||
     !vc->vc_sw->con_set_origin(vc))
  vc->vc_origin = (unsigned long)vc->vc_screenbuf;
 vc->vc_visible_origin = vc->vc_origin;
 vc->vc_scr_end = vc->vc_origin + vc->vc_screenbuf_size;
 vc->vc_pos = vc->vc_origin + vc->vc_size_row * vc->vc_y + 2 * vc->vc_x;
}
