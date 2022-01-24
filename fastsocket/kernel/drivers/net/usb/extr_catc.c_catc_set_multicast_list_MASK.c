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
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int* dev_addr; int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int /*<<< orphan*/  dmi_addr; struct dev_mc_list* next; } ;
struct catc {int* multicast; int* rxmode; int /*<<< orphan*/  is_f5u011; } ;

/* Variables and functions */
 int AltRxPromisc ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int RxEnable ; 
 int RxMultiCast ; 
 int RxPolarity ; 
 int RxPromisc ; 
 int /*<<< orphan*/  RxUnit ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct catc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct catc*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct catc*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct catc*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 struct catc* FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *netdev)
{
	struct catc *catc = FUNC8(netdev);
	struct dev_mc_list *mc;
	u8 broadcast[6];
	u8 rx = RxEnable | RxPolarity | RxMultiCast;
	int i;

	FUNC7(broadcast, 0xff, 6);
	FUNC7(catc->multicast, 0, 64);

	FUNC0(broadcast, catc->multicast);
	FUNC0(netdev->dev_addr, catc->multicast);

	if (netdev->flags & IFF_PROMISC) {
		FUNC7(catc->multicast, 0xff, 64);
		rx |= (!catc->is_f5u011) ? RxPromisc : AltRxPromisc;
	} 

	if (netdev->flags & IFF_ALLMULTI) {
		FUNC7(catc->multicast, 0xff, 64);
	} else {
		for (i = 0, mc = netdev->mc_list; mc && i < netdev->mc_count; i++, mc = mc->next) {
			u32 crc = FUNC4(6, mc->dmi_addr);
			if (!catc->is_f5u011) {
				catc->multicast[(crc >> 3) & 0x3f] |= 1 << (crc & 7);
			} else {
				catc->multicast[7-(crc >> 29)] |= 1 << ((crc >> 26) & 7);
			}
		}
	}
	if (!catc->is_f5u011) {
		FUNC1(catc, RxUnit, rx);
		FUNC2(catc, 0xfa80, catc->multicast, 64);
	} else {
		FUNC5(catc, catc->multicast);
		if (catc->rxmode[0] != rx) {
			catc->rxmode[0] = rx;
			FUNC3("Setting RX mode to %2.2X %2.2X", catc->rxmode[0], catc->rxmode[1]);
			FUNC6(catc, catc->rxmode);
		}
	}
}