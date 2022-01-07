
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmi_system_id {int dummy; } ;
struct TYPE_2__ {int keycode4; int keycode3; int keycode1; } ;


 int KEY_HELP ;
 int KEY_SWITCHVIDEOMODE ;
 int KEY_WWW ;
 int dmi_check_cb_common (struct dmi_system_id const*) ;
 TYPE_1__* fujitsu ;

__attribute__((used)) static int dmi_check_cb_p8010(const struct dmi_system_id *id)
{
 dmi_check_cb_common(id);
 fujitsu->keycode1 = KEY_HELP;
 fujitsu->keycode3 = KEY_SWITCHVIDEOMODE;
 fujitsu->keycode4 = KEY_WWW;
 return 0;
}
