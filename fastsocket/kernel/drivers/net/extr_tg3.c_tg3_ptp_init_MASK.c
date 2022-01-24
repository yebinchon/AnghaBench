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
struct tg3 {int /*<<< orphan*/  ptp_info; scalar_t__ ptp_adjust; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTP_CAPABLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tg3_ptp_caps ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	if (!FUNC2(tp, PTP_CAPABLE))
		return;

	/* Initialize the hardware clock to the system time. */
	FUNC3(tp, FUNC1(FUNC0()));
	tp->ptp_adjust = 0;
	tp->ptp_info = tg3_ptp_caps;
}