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
struct subchannel_id {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct schib {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int FUNC1 (struct subchannel_id) ; 
 int /*<<< orphan*/  FUNC2 (struct schib*) ; 
 scalar_t__ FUNC3 (struct subchannel_id,struct schib*) ; 

__attribute__((used)) static int FUNC4(struct subchannel_id schid, int slow)
{
	struct schib schib;

	if (!slow) {
		/* Will be done on the slow path. */
		return -EAGAIN;
	}
	if (FUNC3(schid, &schib) || !FUNC2(&schib)) {
		/* Unusable - ignore. */
		return 0;
	}
	FUNC0(4, "event: sch 0.%x.%04x, new\n", schid.ssid,
		      schid.sch_no);

	return FUNC1(schid);
}