
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;
struct nlattr {int dummy; } ;


 int DEBUG_TESTMODE ;
 int EINVAL ;



 size_t WL1271_TM_ATTR_PLT_MODE ;
 int nla_get_u32 (struct nlattr*) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_plt_start (struct wl1271*,int const) ;
 int wl1271_plt_stop (struct wl1271*) ;
 int wl1271_tm_detect_fem (struct wl1271*,struct nlattr**) ;

__attribute__((used)) static int wl1271_tm_cmd_set_plt_mode(struct wl1271 *wl, struct nlattr *tb[])
{
 u32 val;
 int ret;

 wl1271_debug(DEBUG_TESTMODE, "testmode cmd set plt mode");

 if (!tb[WL1271_TM_ATTR_PLT_MODE])
  return -EINVAL;

 val = nla_get_u32(tb[WL1271_TM_ATTR_PLT_MODE]);

 switch (val) {
 case 129:
  ret = wl1271_plt_stop(wl);
  break;
 case 128:
  ret = wl1271_plt_start(wl, 128);
  break;
 case 130:
  ret = wl1271_tm_detect_fem(wl, tb);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
