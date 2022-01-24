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
struct qib_pportdata {int /*<<< orphan*/  hw_pidx; struct qib_devdata* dd; } ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SERDES_CHANS ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ,int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct qib_pportdata *ppd, int addr, unsigned data,
			     unsigned mask)
{
	struct qib_devdata *dd = ppd->dd;
	int chan;
	u32 rbc;

	for (chan = 0; chan < SERDES_CHANS; ++chan) {
		FUNC1(dd, FUNC0(ppd->hw_pidx), (chan + (chan >> 1)), addr,
			data, mask);
		rbc = FUNC1(dd, FUNC0(ppd->hw_pidx), (chan + (chan >> 1)),
			      addr, 0, 0);
	}
}