#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {struct wl1271_ap_key** recorded_keys; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_ap_key {scalar_t__ id; int /*<<< orphan*/  tx_seq_16; int /*<<< orphan*/  tx_seq_32; scalar_t__ hlid; int /*<<< orphan*/  key; scalar_t__ key_size; scalar_t__ key_type; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CRYPT ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_KEY_SIZE ; 
 int MAX_NUM_KEYS ; 
 struct wl1271_ap_key* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct wl1271 *wl, struct wl12xx_vif *wlvif,
				u8 id, u8 key_type, u8 key_size,
				const u8 *key, u8 hlid, u32 tx_seq_32,
				u16 tx_seq_16)
{
	struct wl1271_ap_key *ap_key;
	int i;

	FUNC2(DEBUG_CRYPT, "record ap key id %d", (int)id);

	if (key_size > MAX_KEY_SIZE)
		return -EINVAL;

	/*
	 * Find next free entry in ap_keys. Also check we are not replacing
	 * an existing key.
	 */
	for (i = 0; i < MAX_NUM_KEYS; i++) {
		if (wlvif->ap.recorded_keys[i] == NULL)
			break;

		if (wlvif->ap.recorded_keys[i]->id == id) {
			FUNC3("trying to record key replacement");
			return -EINVAL;
		}
	}

	if (i == MAX_NUM_KEYS)
		return -EBUSY;

	ap_key = FUNC0(sizeof(*ap_key), GFP_KERNEL);
	if (!ap_key)
		return -ENOMEM;

	ap_key->id = id;
	ap_key->key_type = key_type;
	ap_key->key_size = key_size;
	FUNC1(ap_key->key, key, key_size);
	ap_key->hlid = hlid;
	ap_key->tx_seq_32 = tx_seq_32;
	ap_key->tx_seq_16 = tx_seq_16;

	wlvif->ap.recorded_keys[i] = ap_key;
	return 0;
}