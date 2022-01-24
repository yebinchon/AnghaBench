#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_9__ {TYPE_7__* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_8__ {int /*<<< orphan*/  eeh_busy; } ;
struct TYPE_10__ {TYPE_1__ flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC4 (TYPE_2__*,int*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int FUNC6 (struct device*,struct device_attribute*,char*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
    char *buf)
{
	scsi_qla_host_t *vha = FUNC7(FUNC1(dev));
	int rval = QLA_FUNCTION_FAILED;
	uint16_t state[5];
	uint32_t pstate;

	if (FUNC0(vha->hw)) {
		pstate = FUNC6(dev, attr, buf);
		return FUNC8(buf, PAGE_SIZE, "0x%x\n", pstate);
	}

	if (FUNC5(vha))
		FUNC3(ql_log_warn, vha, 0x707c,
		    "ISP reset active.\n");
	else if (!vha->hw->flags.eeh_busy)
		rval = FUNC4(vha, state);
	if (rval != QLA_SUCCESS)
		FUNC2(state, -1, sizeof(state));

	return FUNC8(buf, PAGE_SIZE, "0x%x 0x%x 0x%x 0x%x 0x%x\n", state[0],
	    state[1], state[2], state[3], state[4]);
}