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
struct fritz_bcs {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int HDLC_INT_RPR ; 
 int HDLC_INT_XDU ; 
 int HDLC_INT_XPR ; 
 int /*<<< orphan*/  FUNC1 (struct fritz_bcs*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fritz_bcs*) ; 
 int /*<<< orphan*/  FUNC3 (struct fritz_bcs*) ; 

__attribute__((used)) static void FUNC4(struct fritz_bcs *bcs, u32 stat)
{
	FUNC0(0x10, "ch%d stat %#x", bcs->channel, stat);
	if (stat & HDLC_INT_RPR) {
		FUNC0(0x10, "RPR");
		FUNC1(bcs, stat);
	}
	if (stat & HDLC_INT_XDU) {
		FUNC0(0x10, "XDU");
		FUNC2(bcs);
		FUNC3(bcs);
		return;
	}
	if (stat & HDLC_INT_XPR) {
		FUNC0(0x10, "XPR");
		FUNC3(bcs);
	}
}