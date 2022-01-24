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
struct usbnet {int dummy; } ;
struct TYPE_2__ {int legacy; } ;
struct station_info {int /*<<< orphan*/  filled; int /*<<< orphan*/  signal; TYPE_1__ txrate; } ;
typedef  int /*<<< orphan*/  rssi ;
typedef  int /*<<< orphan*/  linkspeed ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  OID_802_11_RSSI ; 
 int /*<<< orphan*/  OID_GEN_LINK_SPEED ; 
 int /*<<< orphan*/  STATION_INFO_SIGNAL ; 
 int /*<<< orphan*/  STATION_INFO_TX_BITRATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct station_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void FUNC4(struct usbnet *usbdev,
						struct station_info *sinfo)
{
	__le32 linkspeed, rssi;
	int ret, len;

	FUNC2(sinfo, 0, sizeof(*sinfo));

	len = sizeof(linkspeed);
	ret = FUNC3(usbdev, OID_GEN_LINK_SPEED, &linkspeed, &len);
	if (ret == 0) {
		sinfo->txrate.legacy = FUNC0(linkspeed) / 1000;
		sinfo->filled |= STATION_INFO_TX_BITRATE;
	}

	len = sizeof(rssi);
	ret = FUNC3(usbdev, OID_802_11_RSSI, &rssi, &len);
	if (ret == 0) {
		sinfo->signal = FUNC1(FUNC0(rssi));
		sinfo->filled |= STATION_INFO_SIGNAL;
	}
}