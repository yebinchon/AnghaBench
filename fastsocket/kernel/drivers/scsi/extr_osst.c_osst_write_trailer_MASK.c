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
struct st_partstat {scalar_t__ drv_file; int /*<<< orphan*/  eof; scalar_t__ drv_block; } ;
struct osst_tape {size_t partition; scalar_t__ write_type; struct st_partstat* ps; } ;
struct osst_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ OS_WRITE_NEW_MARK ; 
 int /*<<< orphan*/  ST_FM ; 
 int FUNC0 (struct osst_tape*,struct osst_request**) ; 
 int FUNC1 (struct osst_tape*,struct osst_request**) ; 
 int FUNC2 (struct osst_tape*,struct osst_request**) ; 
 int /*<<< orphan*/  FUNC3 (struct osst_tape*,struct osst_request**,int) ; 

__attribute__((used)) static int FUNC4(struct osst_tape *STp, struct osst_request ** aSRpnt, int leave_at_EOT)
{
	struct st_partstat * STps = &(STp->ps[STp->partition]);
	int result = 0;

	if (STp->write_type != OS_WRITE_NEW_MARK) {
		/* true unless the user wrote the filemark for us */
		result = FUNC0(STp, aSRpnt);
		if (result < 0) goto out;
		result = FUNC2(STp, aSRpnt);
		if (result < 0) goto out;

		if (STps->drv_file >= 0)
			STps->drv_file++ ;
		STps->drv_block = 0;
	}
	result = FUNC1(STp, aSRpnt);
	FUNC3(STp, aSRpnt, leave_at_EOT);

	STps->eof = ST_FM;
out:
	return result;
}