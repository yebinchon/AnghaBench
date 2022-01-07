
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_cursor ) (struct vc_data*,int ) ;} ;


 int CM_ERASE ;
 int clear_selection () ;
 int hide_softcursor (struct vc_data*) ;
 struct vc_data* sel_cons ;
 int stub1 (struct vc_data*,int ) ;

__attribute__((used)) static void hide_cursor(struct vc_data *vc)
{
 if (vc == sel_cons)
  clear_selection();
 vc->vc_sw->con_cursor(vc, CM_ERASE);
 hide_softcursor(vc);
}
