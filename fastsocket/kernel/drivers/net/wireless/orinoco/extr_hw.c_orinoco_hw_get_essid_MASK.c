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
typedef  int /*<<< orphan*/  u16 ;
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {int port_type; int /*<<< orphan*/  desired_essid; struct hermes hw; } ;
struct hermes_idstring {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  essidbuf ;
struct TYPE_2__ {int (* read_ltv ) (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct hermes_idstring*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  HERMES_RID_CNFDESIREDSSID ; 
 int /*<<< orphan*/  HERMES_RID_CNFOWNSSID ; 
 int /*<<< orphan*/  HERMES_RID_CURRENTSSID ; 
 int IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  USER_BAP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct orinoco_private*,unsigned long*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct hermes_idstring*) ; 
 int FUNC8 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct hermes_idstring*) ; 

int FUNC9(struct orinoco_private *priv, int *active,
			 char buf[IW_ESSID_MAX_SIZE + 1])
{
	struct hermes *hw = &priv->hw;
	int err = 0;
	struct hermes_idstring essidbuf;
	char *p = (char *)(&essidbuf.val);
	int len;
	unsigned long flags;

	if (FUNC4(priv, &flags) != 0)
		return -EBUSY;

	if (FUNC6(priv->desired_essid) > 0) {
		/* We read the desired SSID from the hardware rather
		   than from priv->desired_essid, just in case the
		   firmware is allowed to change it on us. I'm not
		   sure about this */
		/* My guess is that the OWNSSID should always be whatever
		 * we set to the card, whereas CURRENT_SSID is the one that
		 * may change... - Jean II */
		u16 rid;

		*active = 1;

		rid = (priv->port_type == 3) ? HERMES_RID_CNFOWNSSID :
			HERMES_RID_CNFDESIREDSSID;

		err = hw->ops->read_ltv(hw, USER_BAP, rid, sizeof(essidbuf),
					NULL, &essidbuf);
		if (err)
			goto fail_unlock;
	} else {
		*active = 0;

		err = hw->ops->read_ltv(hw, USER_BAP, HERMES_RID_CURRENTSSID,
					sizeof(essidbuf), NULL, &essidbuf);
		if (err)
			goto fail_unlock;
	}

	len = FUNC1(essidbuf.len);
	FUNC0(len > IW_ESSID_MAX_SIZE);

	FUNC3(buf, 0, IW_ESSID_MAX_SIZE);
	FUNC2(buf, p, len);
	err = len;

 fail_unlock:
	FUNC5(priv, &flags);

	return err;
}