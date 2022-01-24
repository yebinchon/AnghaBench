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
struct ctlr_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct ctlr_info *h, unsigned char *scsi3addr,
	unsigned char *device_id, int buflen)
{
	int rc;
	unsigned char *buf;

	if (buflen > 16)
		buflen = 16;
	buf = FUNC2(64, GFP_KERNEL);
	if (!buf)
		return -1;
	rc = FUNC0(h, scsi3addr, 0x83, buf, 64);
	if (rc == 0)
		FUNC3(device_id, &buf[8], buflen);
	FUNC1(buf);
	return rc != 0;
}