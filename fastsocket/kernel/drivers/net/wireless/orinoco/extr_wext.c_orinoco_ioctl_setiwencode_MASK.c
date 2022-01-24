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
struct orinoco_private {int tx_key; int encode_alg; int wep_restrict; TYPE_1__* keys; scalar_t__ has_wpa; int /*<<< orphan*/  has_big_wep; int /*<<< orphan*/  has_wep; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; scalar_t__ length; scalar_t__ pointer; } ;
typedef  enum orinoco_alg { ____Placeholder_orinoco_alg } orinoco_alg ;
struct TYPE_2__ {scalar_t__ key_len; } ;

/* Variables and functions */
 int E2BIG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IW_ENCODE_DISABLED ; 
 int IW_ENCODE_INDEX ; 
 int IW_ENCODE_OPEN ; 
 int IW_ENCODE_RESTRICTED ; 
 scalar_t__ LARGE_KEY_SIZE ; 
 int ORINOCO_ALG_NONE ; 
 scalar_t__ ORINOCO_ALG_TKIP ; 
 int ORINOCO_ALG_WEP ; 
 int ORINOCO_MAX_KEYS ; 
 scalar_t__ SMALL_KEY_SIZE ; 
 int FUNC0 (struct orinoco_private*) ; 
 struct orinoco_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*,int) ; 
 scalar_t__ FUNC4 (struct orinoco_private*,unsigned long*) ; 
 int FUNC5 (struct orinoco_private*,int,int,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct orinoco_private*,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				     struct iw_request_info *info,
				     struct iw_point *erq,
				     char *keybuf)
{
	struct orinoco_private *priv = FUNC1(dev);
	int index = (erq->flags & IW_ENCODE_INDEX) - 1;
	int setindex = priv->tx_key;
	enum orinoco_alg encode_alg = priv->encode_alg;
	int restricted = priv->wep_restrict;
	int err = -EINPROGRESS;		/* Call commit handler */
	unsigned long flags;

	if (!priv->has_wep)
		return -EOPNOTSUPP;

	if (erq->pointer) {
		/* We actually have a key to set - check its length */
		if (erq->length > LARGE_KEY_SIZE)
			return -E2BIG;

		if ((erq->length > SMALL_KEY_SIZE) && !priv->has_big_wep)
			return -E2BIG;
	}

	if (FUNC4(priv, &flags) != 0)
		return -EBUSY;

	/* Clear any TKIP key we have */
	if ((priv->has_wpa) && (priv->encode_alg == ORINOCO_ALG_TKIP))
		(void) FUNC3(priv, setindex);

	if (erq->length > 0) {
		if ((index < 0) || (index >= ORINOCO_MAX_KEYS))
			index = priv->tx_key;

		/* Switch on WEP if off */
		if (encode_alg != ORINOCO_ALG_WEP) {
			setindex = index;
			encode_alg = ORINOCO_ALG_WEP;
		}
	} else {
		/* Important note : if the user do "iwconfig eth0 enc off",
		 * we will arrive there with an index of -1. This is valid
		 * but need to be taken care off... Jean II */
		if ((index < 0) || (index >= ORINOCO_MAX_KEYS)) {
			if ((index != -1) || (erq->flags == 0)) {
				err = -EINVAL;
				goto out;
			}
		} else {
			/* Set the index : Check that the key is valid */
			if (priv->keys[index].key_len == 0) {
				err = -EINVAL;
				goto out;
			}
			setindex = index;
		}
	}

	if (erq->flags & IW_ENCODE_DISABLED)
		encode_alg = ORINOCO_ALG_NONE;
	if (erq->flags & IW_ENCODE_OPEN)
		restricted = 0;
	if (erq->flags & IW_ENCODE_RESTRICTED)
		restricted = 1;

	if (erq->pointer && erq->length > 0) {
		err = FUNC5(priv, index, ORINOCO_ALG_WEP, keybuf,
				      erq->length, NULL, 0);
	}
	priv->tx_key = setindex;

	/* Try fast key change if connected and only keys are changed */
	if ((priv->encode_alg == encode_alg) &&
	    (priv->wep_restrict == restricted) &&
	    FUNC2(dev)) {
		err = FUNC0(priv);
		/* No need to commit if successful */
		goto out;
	}

	priv->encode_alg = encode_alg;
	priv->wep_restrict = restricted;

 out:
	FUNC6(priv, &flags);

	return err;
}