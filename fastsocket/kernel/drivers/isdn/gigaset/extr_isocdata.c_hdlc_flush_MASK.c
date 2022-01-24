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
struct bc_state {int /*<<< orphan*/  fcs; TYPE_1__* cs; int /*<<< orphan*/ * skb; int /*<<< orphan*/  ignore; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ HW_HDR_LEN ; 
 int /*<<< orphan*/  PPP_INITFCS ; 
 scalar_t__ SBUFSIZE ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct bc_state *bcs)
{
	/* clear skb or allocate new if not skipping */
	if (FUNC2(bcs->skb != NULL))
		FUNC4(bcs->skb, 0);
	else if (!bcs->ignore) {
		if ((bcs->skb = FUNC0(SBUFSIZE + HW_HDR_LEN)) != NULL)
			FUNC3(bcs->skb, HW_HDR_LEN);
		else
			FUNC1(bcs->cs->dev, "could not allocate skb\n");
	}

	/* reset packet state */
	bcs->fcs = PPP_INITFCS;
}