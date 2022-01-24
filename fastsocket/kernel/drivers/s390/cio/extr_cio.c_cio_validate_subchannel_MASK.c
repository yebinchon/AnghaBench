#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct subchannel_id {int sch_no; int /*<<< orphan*/  ssid; } ;
struct TYPE_3__ {int st; } ;
struct TYPE_4__ {TYPE_1__ pmcw; } ;
struct subchannel {int st; int /*<<< orphan*/ * lock; struct subchannel_id schid; TYPE_2__ schib; int /*<<< orphan*/  reg_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int ENXIO ; 
#define  SUBCHANNEL_TYPE_IO 129 
#define  SUBCHANNEL_TYPE_MSG 128 
 int FUNC2 (struct subchannel*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (struct subchannel_id) ; 
 int FUNC5 (struct subchannel*) ; 
 int FUNC6 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct subchannel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (struct subchannel_id,TYPE_2__*) ; 

int FUNC12(struct subchannel *sch, struct subchannel_id schid)
{
	char dbf_txt[15];
	int ccode;
	int err;

	FUNC10(dbf_txt, "valsch%x", schid.sch_no);
	FUNC1(4, dbf_txt);

	/* Nuke all fields. */
	FUNC8(sch, 0, sizeof(struct subchannel));

	sch->schid = schid;
	if (FUNC4(schid)) {
		sch->lock = FUNC3();
	} else {
		err = FUNC2(sch);
		if (err)
			goto out;
	}
	FUNC9(&sch->reg_mutex);

	/*
	 * The first subchannel that is not-operational (ccode==3)
	 *  indicates that there aren't any more devices available.
	 * If stsch gets an exception, it means the current subchannel set
	 *  is not valid.
	 */
	ccode = FUNC11 (schid, &sch->schib);
	if (ccode) {
		err = (ccode == 3) ? -ENXIO : ccode;
		goto out;
	}
	/* Copy subchannel type from path management control word. */
	sch->st = sch->schib.pmcw.st;

	switch (sch->st) {
	case SUBCHANNEL_TYPE_IO:
		err = FUNC5(sch);
		break;
	case SUBCHANNEL_TYPE_MSG:
		err = FUNC6(sch);
		break;
	default:
		err = 0;
	}
	if (err)
		goto out;

	FUNC0(4, "Subchannel 0.%x.%04x reports subchannel type %04X\n",
		      sch->schid.ssid, sch->schid.sch_no, sch->st);
	return 0;
out:
	if (!FUNC4(schid))
		FUNC7(sch->lock);
	sch->lock = NULL;
	return err;
}