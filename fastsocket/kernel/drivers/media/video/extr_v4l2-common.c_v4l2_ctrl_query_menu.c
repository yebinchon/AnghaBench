
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int index; int name; int id; scalar_t__ reserved; } ;
struct v4l2_queryctrl {int minimum; int maximum; } ;


 int EINVAL ;
 int strlcpy (int ,char const* const,int) ;
 char** v4l2_ctrl_get_menu (int ) ;

int v4l2_ctrl_query_menu(struct v4l2_querymenu *qmenu, struct v4l2_queryctrl *qctrl,
        const char * const *menu_items)
{
 int i;

 qmenu->reserved = 0;
 if (menu_items == ((void*)0))
  menu_items = v4l2_ctrl_get_menu(qmenu->id);
 if (menu_items == ((void*)0) ||
     (qctrl && (qmenu->index < qctrl->minimum || qmenu->index > qctrl->maximum)))
  return -EINVAL;
 for (i = 0; i < qmenu->index && menu_items[i]; i++) ;
 if (menu_items[i] == ((void*)0) || menu_items[i][0] == '\0')
  return -EINVAL;
 strlcpy(qmenu->name, menu_items[qmenu->index], sizeof(qmenu->name));
 return 0;
}
