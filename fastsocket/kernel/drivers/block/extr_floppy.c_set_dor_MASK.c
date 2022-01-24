#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int address; unsigned char dor; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  select_date; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__* FDCS ; 
 int FD_DEBUG ; 
 int /*<<< orphan*/  FD_DOR ; 
 unsigned char FUNC1 (int,unsigned char) ; 
 TYPE_2__* UDP ; 
 TYPE_1__* UDRS ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char,unsigned char) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static int FUNC5(int fdc, char mask, char data)
{
	unsigned char unit;
	unsigned char drive;
	unsigned char newdor;
	unsigned char olddor;

	if (FDCS->address == -1)
		return -1;

	olddor = FDCS->dor;
	newdor = (olddor & mask) | data;
	if (newdor != olddor) {
		unit = olddor & 0x3;
		if (FUNC4(olddor, unit) && !FUNC4(newdor, unit)) {
			drive = FUNC1(fdc, unit);
#ifdef DCL_DEBUG
			if (UDP->flags & FD_DEBUG) {
				DPRINT("calling disk change from set_dor\n");
			}
#endif
			FUNC2(drive);
		}
		FDCS->dor = newdor;
		FUNC3(newdor, FD_DOR);

		unit = newdor & 0x3;
		if (!FUNC4(olddor, unit) && FUNC4(newdor, unit)) {
			drive = FUNC1(fdc, unit);
			UDRS->select_date = jiffies;
		}
	}
	return olddor;
}