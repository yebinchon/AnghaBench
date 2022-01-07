
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {int vc_x; int vc_y; TYPE_1__* vc_sw; scalar_t__ vc_pos; } ;
struct TYPE_2__ {int (* con_putc ) (struct vc_data*,int,int ,int ) ;} ;


 scalar_t__ DO_UPDATE (struct vc_data*) ;
 int scr_writew (int,int *) ;
 int softcursor_original ;
 int stub1 (struct vc_data*,int,int ,int ) ;

__attribute__((used)) static void hide_softcursor(struct vc_data *vc)
{
 if (softcursor_original != -1) {
  scr_writew(softcursor_original, (u16 *)vc->vc_pos);
  if (DO_UPDATE(vc))
   vc->vc_sw->con_putc(vc, softcursor_original,
     vc->vc_y, vc->vc_x);
  softcursor_original = -1;
 }
}
