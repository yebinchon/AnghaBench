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
struct qla_hw_data {int dummy; } ;
struct fc_port {TYPE_1__* vha; } ;
struct TYPE_2__ {struct qla_hw_data* hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  TCF_LUN_RESET ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,struct fc_port*,unsigned int,int) ; 
 scalar_t__ ql2xasynctmfenable ; 
 int FUNC2 (struct fc_port*,int /*<<< orphan*/ ,unsigned int,int) ; 

int
FUNC3(struct fc_port *fcport, unsigned int l, int tag)
{
	struct qla_hw_data *ha = fcport->vha->hw;

	if ((ql2xasynctmfenable) && FUNC0(ha))
		return FUNC2(fcport, TCF_LUN_RESET, l, tag);

	return FUNC1("Lun", TCF_LUN_RESET, fcport, l, tag);
}