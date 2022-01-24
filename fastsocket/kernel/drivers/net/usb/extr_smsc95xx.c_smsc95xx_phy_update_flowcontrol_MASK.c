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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFC_CFG ; 
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  FLOW ; 
 scalar_t__ FLOW_CTRL_RX ; 
 scalar_t__ FLOW_CTRL_TX ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct usbnet*) ; 
 int FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct usbnet *dev, u8 duplex,
					    u16 lcladv, u16 rmtadv)
{
	u32 flow, afc_cfg = 0;

	int ret = FUNC4(dev, AFC_CFG, &afc_cfg);
	if (ret < 0) {
		FUNC1(dev, "error reading AFC_CFG");
		return;
	}

	if (duplex == DUPLEX_FULL) {
		u8 cap = FUNC2(lcladv, rmtadv);

		if (cap & FLOW_CTRL_RX)
			flow = 0xFFFF0002;
		else
			flow = 0;

		if (cap & FLOW_CTRL_TX)
			afc_cfg |= 0xF;
		else
			afc_cfg &= ~0xF;

		if (FUNC3(dev))
			FUNC0(dev, "rx pause %s, tx pause %s",
				(cap & FLOW_CTRL_RX ? "enabled" : "disabled"),
				(cap & FLOW_CTRL_TX ? "enabled" : "disabled"));
	} else {
		if (FUNC3(dev))
			FUNC0(dev, "half duplex");
		flow = 0;
		afc_cfg |= 0xF;
	}

	FUNC5(dev, FLOW, flow);
	FUNC5(dev,	AFC_CFG, afc_cfg);
}