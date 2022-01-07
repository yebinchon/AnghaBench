
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ext_control {int value; int id; } ;
struct cx2341x_mpeg_params {int dummy; } ;


 char** cx2341x_ctrl_get_menu (struct cx2341x_mpeg_params const*,int ) ;
 scalar_t__ cx2341x_get_ctrl (struct cx2341x_mpeg_params const*,struct v4l2_ext_control*) ;

__attribute__((used)) static const char *cx2341x_menu_item(const struct cx2341x_mpeg_params *p, u32 id)
{
 const char * const *menu = cx2341x_ctrl_get_menu(p, id);
 struct v4l2_ext_control ctrl;

 if (menu == ((void*)0))
  goto invalid;
 ctrl.id = id;
 if (cx2341x_get_ctrl(p, &ctrl))
  goto invalid;
 while (ctrl.value-- && *menu) menu++;
 if (*menu == ((void*)0))
  goto invalid;
 return *menu;

invalid:
 return "<invalid>";
}
