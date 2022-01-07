
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1271_command {int dummy; } ;
struct wl1271 {int mutex; } ;
struct nlattr {int dummy; } ;


 int DEBUG_TESTMODE ;
 int EINVAL ;
 int EMSGSIZE ;
 size_t WL1271_TM_ATTR_DATA ;
 size_t WL1271_TM_ATTR_IE_ID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* nla_data (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int wl1271_cmd_configure (struct wl1271*,int ,void*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

__attribute__((used)) static int wl1271_tm_cmd_configure(struct wl1271 *wl, struct nlattr *tb[])
{
 int buf_len, ret;
 void *buf;
 u8 ie_id;

 wl1271_debug(DEBUG_TESTMODE, "testmode cmd configure");

 if (!tb[WL1271_TM_ATTR_DATA])
  return -EINVAL;
 if (!tb[WL1271_TM_ATTR_IE_ID])
  return -EINVAL;

 ie_id = nla_get_u8(tb[WL1271_TM_ATTR_IE_ID]);
 buf = nla_data(tb[WL1271_TM_ATTR_DATA]);
 buf_len = nla_len(tb[WL1271_TM_ATTR_DATA]);

 if (buf_len > sizeof(struct wl1271_command))
  return -EMSGSIZE;

 mutex_lock(&wl->mutex);
 ret = wl1271_cmd_configure(wl, ie_id, buf, buf_len);
 mutex_unlock(&wl->mutex);

 if (ret < 0) {
  wl1271_warning("testmode cmd configure failed: %d", ret);
  return ret;
 }

 return 0;
}
