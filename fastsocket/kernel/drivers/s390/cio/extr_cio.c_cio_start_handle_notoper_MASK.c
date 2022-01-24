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
struct TYPE_2__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct subchannel {int lpm; int /*<<< orphan*/  schib; int /*<<< orphan*/  dev; TYPE_1__ schid; } ;
struct schib {int dummy; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int EACCES ; 
 int ENODEV ; 
 scalar_t__ FUNC3 (struct subchannel*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC6(struct subchannel *sch, __u8 lpm)
{
	char dbf_text[15];

	if (lpm != 0)
		sch->lpm &= ~lpm;
	else
		sch->lpm = 0;

	FUNC1(2, "cio_start: 'not oper' status for "
		      "subchannel 0.%x.%04x!\n", sch->schid.ssid,
		      sch->schid.sch_no);

	if (FUNC3(sch))
		return -ENODEV;

	FUNC5(dbf_text, "no%s", FUNC4(&sch->dev));
	FUNC2(0, dbf_text);
	FUNC0(0, &sch->schib, sizeof (struct schib));

	return (sch->lpm ? -EACCES : -ENODEV);
}