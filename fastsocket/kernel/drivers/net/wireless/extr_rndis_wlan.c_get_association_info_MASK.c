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
struct ndis_80211_assoc_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OID_802_11_ASSOCIATION_INFORMATION ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,struct ndis_80211_assoc_info*,int*) ; 

__attribute__((used)) static int FUNC1(struct usbnet *usbdev,
			struct ndis_80211_assoc_info *info, int len)
{
	return FUNC0(usbdev, OID_802_11_ASSOCIATION_INFORMATION,
				info, &len);
}