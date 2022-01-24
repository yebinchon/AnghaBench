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
typedef  int /*<<< orphan*/  ctlr_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_INQUIRY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IO_OK ; 
 int /*<<< orphan*/  PAGE_83_INQ_BYTES ; 
 int /*<<< orphan*/  TYPE_CMD ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(ctlr_info_t *h, int logvol,
			unsigned char *serial_no, int buflen)
{
#define PAGE_83_INQ_BYTES 64
	int rc;
	unsigned char *buf;
	unsigned char scsi3addr[8];

	if (buflen > 16)
		buflen = 16;
	FUNC4(serial_no, 0xff, buflen);
	buf = FUNC1(PAGE_83_INQ_BYTES, GFP_KERNEL);
	if (!buf)
		return;
	FUNC4(serial_no, 0, buflen);
	FUNC2(h, scsi3addr, logvol);
	rc = FUNC5(h, CISS_INQUIRY, buf,
		PAGE_83_INQ_BYTES, 0x83, scsi3addr, TYPE_CMD);
	if (rc == IO_OK)
		FUNC3(serial_no, &buf[8], buflen);
	FUNC0(buf);
	return;
}