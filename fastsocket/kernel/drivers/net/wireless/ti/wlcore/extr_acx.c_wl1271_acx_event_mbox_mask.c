
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wl1271 {int dummy; } ;
struct acx_event_mask {void* event_mask; void* high_event_mask; } ;


 int ACX_EVENT_MBOX_MASK ;
 int DEBUG_ACX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* cpu_to_le32 (int) ;
 int kfree (struct acx_event_mask*) ;
 struct acx_event_mask* kzalloc (int,int ) ;
 int wl1271_cmd_configure (struct wl1271*,int ,struct acx_event_mask*,int) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_warning (char*,int) ;

int wl1271_acx_event_mbox_mask(struct wl1271 *wl, u32 event_mask)
{
 struct acx_event_mask *mask;
 int ret;

 wl1271_debug(DEBUG_ACX, "acx event mbox mask");

 mask = kzalloc(sizeof(*mask), GFP_KERNEL);
 if (!mask) {
  ret = -ENOMEM;
  goto out;
 }


 mask->high_event_mask = cpu_to_le32(0xffffffff);
 mask->event_mask = cpu_to_le32(event_mask);

 ret = wl1271_cmd_configure(wl, ACX_EVENT_MBOX_MASK,
       mask, sizeof(*mask));
 if (ret < 0) {
  wl1271_warning("failed to set acx_event_mbox_mask: %d", ret);
  goto out;
 }

out:
 kfree(mask);
 return ret;
}
