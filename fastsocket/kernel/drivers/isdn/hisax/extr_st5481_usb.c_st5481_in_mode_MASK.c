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
typedef  int /*<<< orphan*/  u32 ;
struct st5481_in {int mode; int /*<<< orphan*/  counter; int /*<<< orphan*/  adapter; int /*<<< orphan*/  packet_size; int /*<<< orphan*/  ep; int /*<<< orphan*/  hdlc_state; int /*<<< orphan*/ * urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDLC_56KBIT ; 
 int /*<<< orphan*/  HDLC_BITREVERSE ; 
 scalar_t__ L1_MODE_HDLC_56K ; 
 int L1_MODE_NULL ; 
 scalar_t__ L1_MODE_TRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st5481_in*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct st5481_in *in, int mode)
{
	if (in->mode == mode)
		return;

	in->mode = mode;

	FUNC4(in->urb[0]);
	FUNC4(in->urb[1]);

	if (in->mode != L1_MODE_NULL) {
		if (in->mode != L1_MODE_TRANS) {
			u32 features = HDLC_BITREVERSE;

			if (in->mode == L1_MODE_HDLC_56K)
				features |= HDLC_56KBIT;
			FUNC0(&in->hdlc_state, features);
		}
		FUNC3(in->adapter, in->ep, NULL, NULL);
		FUNC2(in->adapter, in->counter,
					   in->packet_size,
					   NULL, NULL);
		FUNC1(in);
	} else {
		FUNC2(in->adapter, in->counter,
					   0, NULL, NULL);
	}
}