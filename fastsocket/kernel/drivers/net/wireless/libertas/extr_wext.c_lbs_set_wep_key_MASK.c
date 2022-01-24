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
typedef  int u16 ;
struct enc_key {int len; int /*<<< orphan*/  key; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int wep_enabled; } ;
struct assoc_request {int wep_tx_keyidx; TYPE_1__ secinfo; struct enc_key* wep_keys; } ;

/* Variables and functions */
 int EINVAL ; 
 int KEY_LEN_WEP_104 ; 
 int KEY_LEN_WEP_40 ; 
 int /*<<< orphan*/  KEY_TYPE_ID_WEP ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct enc_key*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct assoc_request *assoc_req,
			    const char *key_material,
			    u16 key_length,
			    u16 index,
			    int set_tx_key)
{
	int ret = 0;
	struct enc_key *pkey;

	FUNC0(LBS_DEB_WEXT);

	/* Paranoid validation of key index */
	if (index > 3) {
		ret = -EINVAL;
		goto out;
	}

	/* validate max key length */
	if (key_length > KEY_LEN_WEP_104) {
		ret = -EINVAL;
		goto out;
	}

	pkey = &assoc_req->wep_keys[index];

	if (key_length > 0) {
		FUNC4(pkey, 0, sizeof(struct enc_key));
		pkey->type = KEY_TYPE_ID_WEP;

		/* Standardize the key length */
		pkey->len = (key_length > KEY_LEN_WEP_40) ?
		                KEY_LEN_WEP_104 : KEY_LEN_WEP_40;
		FUNC3(pkey->key, key_material, key_length);
	}

	if (set_tx_key) {
		/* Ensure the chosen key is valid */
		if (!pkey->len) {
			FUNC2("key not set, so cannot enable it\n");
			ret = -EINVAL;
			goto out;
		}
		assoc_req->wep_tx_keyidx = index;
	}

	assoc_req->secinfo.wep_enabled = 1;

out:
	FUNC1(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}