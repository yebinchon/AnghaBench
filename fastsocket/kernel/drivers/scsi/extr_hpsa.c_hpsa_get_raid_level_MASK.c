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
 unsigned char RAID_UNKNOWN ; 
 int FUNC0 (struct ctlr_info*,unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ctlr_info *h,
	unsigned char *scsi3addr, unsigned char *raid_level)
{
	int rc;
	unsigned char *buf;

	*raid_level = RAID_UNKNOWN;
	buf = FUNC2(64, GFP_KERNEL);
	if (!buf)
		return;
	rc = FUNC0(h, scsi3addr, 0xC1, buf, 64);
	if (rc == 0)
		*raid_level = buf[8];
	if (*raid_level > RAID_UNKNOWN)
		*raid_level = RAID_UNKNOWN;
	FUNC1(buf);
	return;
}