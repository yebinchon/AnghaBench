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
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDIS_80211_INFRA_INFRA ; 
 int /*<<< orphan*/  NL80211_AUTHTYPE_OPEN_SYSTEM ; 
 int /*<<< orphan*/  RNDIS_WLAN_ALG_NONE ; 
 int /*<<< orphan*/  RNDIS_WLAN_KEY_MGMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*) ; 

__attribute__((used)) static void FUNC4(struct usbnet *usbdev)
{
	FUNC2(usbdev, NDIS_80211_INFRA_INFRA);
	FUNC0(usbdev, 0, NL80211_AUTHTYPE_OPEN_SYSTEM,
						RNDIS_WLAN_KEY_MGMT_NONE);
	FUNC3(usbdev);
	FUNC1(usbdev, RNDIS_WLAN_ALG_NONE, RNDIS_WLAN_ALG_NONE);
}