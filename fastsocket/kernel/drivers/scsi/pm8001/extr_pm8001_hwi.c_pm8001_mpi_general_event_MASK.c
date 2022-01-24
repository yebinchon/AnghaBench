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
typedef  int /*<<< orphan*/  u32 ;
struct pm8001_hba_info {int dummy; } ;
struct general_event_resp {int /*<<< orphan*/ * inb_IOMB_payload; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int GENERAL_EVENT_PAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

int FUNC3(struct pm8001_hba_info *pm8001_ha , void *piomb)
{
	u32 status;
	int i;
	struct general_event_resp *pPayload =
		(struct general_event_resp *)(piomb + 4);
	status = FUNC1(pPayload->status);
	FUNC0(pm8001_ha,
		FUNC2(" status = 0x%x\n", status));
	for (i = 0; i < GENERAL_EVENT_PAYLOAD; i++)
		FUNC0(pm8001_ha,
			FUNC2("inb_IOMB_payload[0x%x] 0x%x,\n", i,
			pPayload->inb_IOMB_payload[i]));
	return 0;
}