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
struct mce {int status; int addr; void* misc; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int MCI_STATUS_ADDRV ; 
 int MCI_STATUS_MISCV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ mce_ser ; 

__attribute__((used)) static void FUNC4(struct mce *m, int i)
{
	if (m->status & MCI_STATUS_MISCV)
		m->misc = FUNC3(FUNC2(i));
	if (m->status & MCI_STATUS_ADDRV) {
		m->addr = FUNC3(FUNC1(i));

		/*
		 * Mask the reported address by the reported granularity.
		 */
		if (mce_ser && (m->status & MCI_STATUS_MISCV)) {
			u8 shift = FUNC0(m->misc);
			m->addr >>= shift;
			m->addr <<= shift;
		}
	}
}