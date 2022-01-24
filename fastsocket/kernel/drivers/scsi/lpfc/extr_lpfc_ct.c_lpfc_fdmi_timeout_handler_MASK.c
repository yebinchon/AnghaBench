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
struct lpfc_vport {int /*<<< orphan*/  fc_fdmitmo; } ;
struct lpfc_nodelist {int dummy; } ;
struct TYPE_2__ {char* nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDMI_DID ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  SLI_MGMT_DHBA ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 

void
FUNC6(struct lpfc_vport *vport)
{
	struct lpfc_nodelist *ndlp;

	ndlp = FUNC3(vport, FDMI_DID);
	if (ndlp && FUNC0(ndlp)) {
		if (FUNC1()->nodename[0] != '\0')
			FUNC2(vport, ndlp, SLI_MGMT_DHBA);
		else
			FUNC4(&vport->fc_fdmitmo, jiffies +
				  FUNC5(1000 * 60));
	}
	return;
}