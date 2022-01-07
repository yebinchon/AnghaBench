
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wl1271 {scalar_t__* session_ids; } ;


 scalar_t__ SESSION_COUNTER_MAX ;

__attribute__((used)) static int wlcore_get_new_session_id(struct wl1271 *wl, u8 hlid)
{
 if (wl->session_ids[hlid] >= SESSION_COUNTER_MAX)
  wl->session_ids[hlid] = 0;

 wl->session_ids[hlid]++;

 return wl->session_ids[hlid];
}
