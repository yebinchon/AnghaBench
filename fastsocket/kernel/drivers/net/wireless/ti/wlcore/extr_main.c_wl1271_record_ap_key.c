
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {struct wl1271_ap_key** recorded_keys; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_ap_key {scalar_t__ id; int tx_seq_16; int tx_seq_32; scalar_t__ hlid; int key; scalar_t__ key_size; scalar_t__ key_type; } ;
struct wl1271 {int dummy; } ;


 int DEBUG_CRYPT ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MAX_KEY_SIZE ;
 int MAX_NUM_KEYS ;
 struct wl1271_ap_key* kzalloc (int,int ) ;
 int memcpy (int ,scalar_t__ const*,scalar_t__) ;
 int wl1271_debug (int ,char*,int) ;
 int wl1271_warning (char*) ;

__attribute__((used)) static int wl1271_record_ap_key(struct wl1271 *wl, struct wl12xx_vif *wlvif,
    u8 id, u8 key_type, u8 key_size,
    const u8 *key, u8 hlid, u32 tx_seq_32,
    u16 tx_seq_16)
{
 struct wl1271_ap_key *ap_key;
 int i;

 wl1271_debug(DEBUG_CRYPT, "record ap key id %d", (int)id);

 if (key_size > MAX_KEY_SIZE)
  return -EINVAL;





 for (i = 0; i < MAX_NUM_KEYS; i++) {
  if (wlvif->ap.recorded_keys[i] == ((void*)0))
   break;

  if (wlvif->ap.recorded_keys[i]->id == id) {
   wl1271_warning("trying to record key replacement");
   return -EINVAL;
  }
 }

 if (i == MAX_NUM_KEYS)
  return -EBUSY;

 ap_key = kzalloc(sizeof(*ap_key), GFP_KERNEL);
 if (!ap_key)
  return -ENOMEM;

 ap_key->id = id;
 ap_key->key_type = key_type;
 ap_key->key_size = key_size;
 memcpy(ap_key->key, key, key_size);
 ap_key->hlid = hlid;
 ap_key->tx_seq_32 = tx_seq_32;
 ap_key->tx_seq_16 = tx_seq_16;

 wlvif->ap.recorded_keys[i] = ap_key;
 return 0;
}
