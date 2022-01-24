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
struct pt_unit {int last_sense; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ATAPI_REQ_SENSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char,char,char) ; 
 int FUNC2 (struct pt_unit*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_unit*,char*,char*) ; 

__attribute__((used)) static void FUNC4(struct pt_unit *tape, int quiet)
{
	char rs_cmd[12] = { ATAPI_REQ_SENSE, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0 };
	char buf[16];
	int r;

	r = FUNC2(tape, rs_cmd, 16, "Request sense");
	FUNC0(1);
	if (!r)
		FUNC3(tape, buf, "Request sense");

	tape->last_sense = -1;
	if (!r) {
		if (!quiet)
			FUNC1("%s: Sense key: %x, ASC: %x, ASQ: %x\n",
			       tape->name, buf[2] & 0xf, buf[12], buf[13]);
		tape->last_sense = (buf[2] & 0xf) | ((buf[12] & 0xff) << 8)
		    | ((buf[13] & 0xff) << 16);
	}
}