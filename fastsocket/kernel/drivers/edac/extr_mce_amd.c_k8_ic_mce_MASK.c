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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  R4_EVICT 130 
#define  R4_IRD 129 
#define  R4_SNOOP 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(u16 ec, u8 xec)
{
	u8 ll	 = FUNC0(ec);
	bool ret = true;

	if (!FUNC1(ec))
		return false;

	if (ll == 0x2)
		FUNC3("during a linefill from L2.\n");
	else if (ll == 0x1) {
		switch (FUNC2(ec)) {
		case R4_IRD:
			FUNC3("Parity error during data load.\n");
			break;

		case R4_EVICT:
			FUNC3("Copyback Parity/Victim error.\n");
			break;

		case R4_SNOOP:
			FUNC3("Tag Snoop error.\n");
			break;

		default:
			ret = false;
			break;
		}
	} else
		ret = false;

	return ret;
}