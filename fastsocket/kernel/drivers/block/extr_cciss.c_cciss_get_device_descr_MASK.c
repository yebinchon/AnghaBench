#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ctlr_info_t ;
struct TYPE_5__ {int /*<<< orphan*/ * data_byte; } ;
typedef  TYPE_1__ InquiryData_struct ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_INQUIRY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IO_OK ; 
 size_t MODEL_LEN ; 
 size_t REV_LEN ; 
 int /*<<< orphan*/  TYPE_CMD ; 
 size_t VENDOR_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(ctlr_info_t *h, int logvol, char *vendor,
	char *model, char *rev)
{
	int rc;
	InquiryData_struct *inq_buf;
	unsigned char scsi3addr[8];

	*vendor = '\0';
	*model = '\0';
	*rev = '\0';

	inq_buf = FUNC1(sizeof(InquiryData_struct), GFP_KERNEL);
	if (!inq_buf)
		return;

	FUNC2(h, scsi3addr, logvol);
	rc = FUNC4(h, CISS_INQUIRY, inq_buf,
			     sizeof(InquiryData_struct), 0,
				scsi3addr, TYPE_CMD);
	if (rc == IO_OK) {
		FUNC3(vendor, &inq_buf->data_byte[8], VENDOR_LEN);
		vendor[VENDOR_LEN] = '\0';
		FUNC3(model, &inq_buf->data_byte[16], MODEL_LEN);
		model[MODEL_LEN] = '\0';
		FUNC3(rev, &inq_buf->data_byte[32], REV_LEN);
		rev[REV_LEN] = '\0';
	}

	FUNC0(inq_buf);
	return;
}