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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ peer; scalar_t__ (* recv ) (scalar_t__,struct sk_buff*) ;} ;
struct dsp {TYPE_1__ ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HFC_SPL_LOOP_OFF ; 
 int /*<<< orphan*/  HFC_SPL_LOOP_ON ; 
 int /*<<< orphan*/  PH_CONTROL_REQ ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (scalar_t__,struct sk_buff*) ; 

__attribute__((used)) static void
FUNC3(struct dsp *dsp, u8 *sample, int len)
{
	struct sk_buff *nskb;

	/* unlocking is not required, because we don't expect a response */
	nskb = FUNC0(PH_CONTROL_REQ,
		(len) ? HFC_SPL_LOOP_ON : HFC_SPL_LOOP_OFF, len, sample,
		GFP_ATOMIC);
	if (nskb) {
		if (dsp->ch.peer) {
			if (dsp->ch.recv(dsp->ch.peer, nskb))
				FUNC1(nskb);
		} else
			FUNC1(nskb);
	}
}