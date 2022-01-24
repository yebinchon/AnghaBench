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
typedef  int /*<<< orphan*/  u8 ;
struct parsed_region_chan_11d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SCAN_TYPE_ACTIVE ; 
 int /*<<< orphan*/  CMD_SCAN_TYPE_PASSIVE ; 
 int /*<<< orphan*/  LBS_DEB_11D ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct parsed_region_chan_11d*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

u8 FUNC4(u8 chan,
			  struct parsed_region_chan_11d * parsed_region_chan)
{
	u8 scan_type = CMD_SCAN_TYPE_PASSIVE;

	FUNC2(LBS_DEB_11D);

	if (FUNC0(chan, parsed_region_chan)) {
		FUNC1("found, do active scan\n");
		scan_type = CMD_SCAN_TYPE_ACTIVE;
	} else {
		FUNC1("not found, do passive scan\n");
	}

	FUNC3(LBS_DEB_11D, "ret scan_type %d", scan_type);
	return scan_type;

}