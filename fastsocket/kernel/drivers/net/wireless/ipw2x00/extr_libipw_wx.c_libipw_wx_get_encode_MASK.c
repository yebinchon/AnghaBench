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
struct iw_point {int flags; int length; } ;
union iwreq_data {struct iw_point encoding; } ;
struct libipw_security {int* key_sizes; int /*<<< orphan*/ * keys; int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int tx_keyidx; struct lib80211_crypt_data** crypt; } ;
struct libipw_device {scalar_t__ open_wep; TYPE_1__ crypt_info; struct libipw_security sec; } ;
struct lib80211_crypt_data {int dummy; } ;
struct iw_request_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int IW_ENCODE_DISABLED ; 
 int IW_ENCODE_ENABLED ; 
 int IW_ENCODE_INDEX ; 
 int IW_ENCODE_OPEN ; 
 int IW_ENCODE_RESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int WEP_KEYS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct libipw_device *ieee,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *keybuf)
{
	struct iw_point *erq = &(wrqu->encoding);
	int len, key;
	struct lib80211_crypt_data *crypt;
	struct libipw_security *sec = &ieee->sec;

	FUNC0("GET_ENCODE\n");

	key = erq->flags & IW_ENCODE_INDEX;
	if (key) {
		if (key > WEP_KEYS)
			return -EINVAL;
		key--;
	} else
		key = ieee->crypt_info.tx_keyidx;

	crypt = ieee->crypt_info.crypt[key];
	erq->flags = key + 1;

	if (!sec->enabled) {
		erq->length = 0;
		erq->flags |= IW_ENCODE_DISABLED;
		return 0;
	}

	len = sec->key_sizes[key];
	FUNC1(keybuf, sec->keys[key], len);

	erq->length = len;
	erq->flags |= IW_ENCODE_ENABLED;

	if (ieee->open_wep)
		erq->flags |= IW_ENCODE_OPEN;
	else
		erq->flags |= IW_ENCODE_RESTRICTED;

	return 0;
}