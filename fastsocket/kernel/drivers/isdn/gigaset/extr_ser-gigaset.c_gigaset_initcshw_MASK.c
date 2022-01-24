#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ser_cardstate {int dummy; } ;
struct TYPE_6__ {TYPE_3__* ser; } ;
struct cardstate {int /*<<< orphan*/  write_tasklet; TYPE_1__ hw; int /*<<< orphan*/  minor_index; } ;
struct TYPE_9__ {int /*<<< orphan*/  release; } ;
struct TYPE_7__ {TYPE_5__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GIGASET_MODULENAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,struct cardstate*) ; 
 int /*<<< orphan*/  gigaset_device_release ; 
 int /*<<< orphan*/  gigaset_modem_fill ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct cardstate *cs)
{
	int rc;

	if (!(cs->hw.ser = FUNC2(sizeof(struct ser_cardstate), GFP_KERNEL))) {
		FUNC4("out of memory\n");
		return 0;
	}

	cs->hw.ser->dev.name = GIGASET_MODULENAME;
	cs->hw.ser->dev.id = cs->minor_index;
	cs->hw.ser->dev.dev.release = gigaset_device_release;
	if ((rc = FUNC3(&cs->hw.ser->dev)) != 0) {
		FUNC4("error %d registering platform device\n", rc);
		FUNC1(cs->hw.ser);
		cs->hw.ser = NULL;
		return 0;
	}
	FUNC0(&cs->hw.ser->dev.dev, cs);

	FUNC5(&cs->write_tasklet,
	             &gigaset_modem_fill, (unsigned long) cs);
	return 1;
}