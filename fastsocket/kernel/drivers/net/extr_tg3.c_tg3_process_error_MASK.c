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
struct tg3 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_PROCESSED ; 
 int /*<<< orphan*/  HOSTCC_FLOW_ATTN ; 
 int HOSTCC_FLOW_ATTN_MBUF_LWM ; 
 int /*<<< orphan*/  MSGINT_STATUS ; 
 int MSGINT_STATUS_MSI_REQ ; 
 int /*<<< orphan*/  RDMAC_STATUS ; 
 int /*<<< orphan*/  WDMAC_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 scalar_t__ FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tg3 *tp)
{
	u32 val;
	bool real_error = false;

	if (FUNC2(tp, ERROR_PROCESSED))
		return;

	/* Check Flow Attention register */
	val = FUNC5(HOSTCC_FLOW_ATTN);
	if (val & ~HOSTCC_FLOW_ATTN_MBUF_LWM) {
		FUNC0(tp->dev, "FLOW Attention error.  Resetting chip.\n");
		real_error = true;
	}

	if (FUNC5(MSGINT_STATUS) & ~MSGINT_STATUS_MSI_REQ) {
		FUNC0(tp->dev, "MSI Status error.  Resetting chip.\n");
		real_error = true;
	}

	if (FUNC5(RDMAC_STATUS) || FUNC5(WDMAC_STATUS)) {
		FUNC0(tp->dev, "DMA Status error.  Resetting chip.\n");
		real_error = true;
	}

	if (!real_error)
		return;

	FUNC1(tp);

	FUNC3(tp, ERROR_PROCESSED);
	FUNC4(tp);
}