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
typedef  int /*<<< orphan*/  format_pg ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int scsi_debug_sector_size ; 
 int sdebug_sectors_per ; 

__attribute__((used)) static int FUNC3(unsigned char * p, int pcontrol, int target)
{       /* Format device page for mode_sense */
	unsigned char format_pg[] = {0x3, 0x16, 0, 0, 0, 0, 0, 0,
				     0, 0, 0, 0, 0, 0, 0, 0,
				     0, 0, 0, 0, 0x40, 0, 0, 0};

	FUNC1(p, format_pg, sizeof(format_pg));
	p[10] = (sdebug_sectors_per >> 8) & 0xff;
	p[11] = sdebug_sectors_per & 0xff;
	p[12] = (scsi_debug_sector_size >> 8) & 0xff;
	p[13] = scsi_debug_sector_size & 0xff;
	if (FUNC0(target))
		p[20] |= 0x20; /* should agree with INQUIRY */
	if (1 == pcontrol)
		FUNC2(p + 2, 0, sizeof(format_pg) - 2);
	return sizeof(format_pg);
}