
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t WL1271_TM_ATTR_CMD_ID ;
 int WL1271_TM_ATTR_MAX ;





 int nla_get_u32 (struct nlattr*) ;
 int nla_parse (struct nlattr**,int ,void*,int,int ) ;
 int wl1271_tm_cmd_configure (struct wl1271*,struct nlattr**) ;
 int wl1271_tm_cmd_interrogate (struct wl1271*,struct nlattr**) ;
 int wl1271_tm_cmd_set_plt_mode (struct wl1271*,struct nlattr**) ;
 int wl1271_tm_cmd_test (struct wl1271*,struct nlattr**) ;
 int wl1271_tm_policy ;
 int wl12xx_tm_cmd_get_mac (struct wl1271*,struct nlattr**) ;

int wl1271_tm_cmd(struct ieee80211_hw *hw, void *data, int len)
{
 struct wl1271 *wl = hw->priv;
 struct nlattr *tb[WL1271_TM_ATTR_MAX + 1];
 int err;

 err = nla_parse(tb, WL1271_TM_ATTR_MAX, data, len, wl1271_tm_policy);
 if (err)
  return err;

 if (!tb[WL1271_TM_ATTR_CMD_ID])
  return -EINVAL;

 switch (nla_get_u32(tb[WL1271_TM_ATTR_CMD_ID])) {
 case 128:
  return wl1271_tm_cmd_test(wl, tb);
 case 130:
  return wl1271_tm_cmd_interrogate(wl, tb);
 case 132:
  return wl1271_tm_cmd_configure(wl, tb);
 case 129:
  return wl1271_tm_cmd_set_plt_mode(wl, tb);
 case 131:
  return wl12xx_tm_cmd_get_mac(wl, tb);
 default:
  return -EOPNOTSUPP;
 }
}
