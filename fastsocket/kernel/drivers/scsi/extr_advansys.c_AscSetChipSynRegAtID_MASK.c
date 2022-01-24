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
typedef  int uchar ;
typedef  int /*<<< orphan*/  PortAddr ;
typedef  int ASC_SCSI_BIT_ID_TYPE ;

/* Variables and functions */
 int ASC_MAX_TID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FALSE ; 
 int TRUE ; 

__attribute__((used)) static int FUNC5(PortAddr iop_base, uchar id, uchar sdtr_data)
{
	ASC_SCSI_BIT_ID_TYPE org_id;
	int i;
	int sta = TRUE;

	FUNC2(iop_base, 1);
	org_id = FUNC1(iop_base);
	for (i = 0; i <= ASC_MAX_TID; i++) {
		if (org_id == (0x01 << i))
			break;
	}
	org_id = (ASC_SCSI_BIT_ID_TYPE) i;
	FUNC4(iop_base, id);
	if (FUNC1(iop_base) == (0x01 << id)) {
		FUNC2(iop_base, 0);
		FUNC3(iop_base, sdtr_data);
		if (FUNC0(iop_base) != sdtr_data) {
			sta = FALSE;
		}
	} else {
		sta = FALSE;
	}
	FUNC2(iop_base, 1);
	FUNC4(iop_base, org_id);
	FUNC2(iop_base, 0);
	return (sta);
}