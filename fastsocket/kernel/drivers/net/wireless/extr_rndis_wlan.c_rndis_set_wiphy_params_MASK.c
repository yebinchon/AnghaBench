#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct wiphy {int /*<<< orphan*/  rts_threshold; int /*<<< orphan*/  frag_threshold; } ;
struct usbnet {int dummy; } ;
struct rndis_wlan_private {struct usbnet* usbdev; } ;

/* Variables and functions */
 int WIPHY_PARAM_FRAG_THRESHOLD ; 
 int WIPHY_PARAM_RTS_THRESHOLD ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ) ; 
 struct rndis_wlan_private* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy, u32 changed)
{
	struct rndis_wlan_private *priv = FUNC2(wiphy);
	struct usbnet *usbdev = priv->usbdev;
	int err;

	if (changed & WIPHY_PARAM_FRAG_THRESHOLD) {
		err = FUNC0(usbdev, wiphy->frag_threshold);
		if (err < 0)
			return err;
	}

	if (changed & WIPHY_PARAM_RTS_THRESHOLD) {
		err = FUNC1(usbdev, wiphy->rts_threshold);
		if (err < 0)
			return err;
	}

	return 0;
}