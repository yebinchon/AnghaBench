
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_pub {scalar_t__ wlc; } ;
struct brcms_info {int dummy; } ;
struct brcms_c_info {TYPE_1__* modulecb; } ;
struct TYPE_2__ {struct brcms_info* hdl; int name; } ;


 int BRCMS_MAXMODULES ;
 int ENODATA ;
 int memset (TYPE_1__*,int ,int) ;
 int strcmp (int ,char const*) ;

int brcms_c_module_unregister(struct brcms_pub *pub, const char *name,
         struct brcms_info *hdl)
{
 struct brcms_c_info *wlc = (struct brcms_c_info *) pub->wlc;
 int i;

 if (wlc == ((void*)0))
  return -ENODATA;

 for (i = 0; i < BRCMS_MAXMODULES; i++) {
  if (!strcmp(wlc->modulecb[i].name, name) &&
      (wlc->modulecb[i].hdl == hdl)) {
   memset(&wlc->modulecb[i], 0, sizeof(wlc->modulecb[i]));
   return 0;
  }
 }


 return -ENODATA;
}
