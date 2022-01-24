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
struct TYPE_5__ {int if_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
#define  MGSL_INTERFACE_RS232 130 
#define  MGSL_INTERFACE_RS422 129 
#define  MGSL_INTERFACE_V35 128 
 int /*<<< orphan*/  PVR ; 
 unsigned char PVR_RS232 ; 
 unsigned char PVR_RS422 ; 
 unsigned char PVR_V35 ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC5(MGSLPC_INFO * info, int if_mode)
{
 	unsigned long flags;
	unsigned char val;
	if (debug_level >= DEBUG_LEVEL_INFO)
		FUNC0("set_interface(%s,%d)\n", info->device_name, if_mode);
	FUNC2(&info->lock,flags);
	info->if_mode = if_mode;

	val = FUNC1(info, PVR) & 0x0f;
	switch (info->if_mode)
	{
	case MGSL_INTERFACE_RS232: val |= PVR_RS232; break;
	case MGSL_INTERFACE_V35:   val |= PVR_V35;   break;
	case MGSL_INTERFACE_RS422: val |= PVR_RS422; break;
	}
	FUNC4(info, PVR, val);

	FUNC3(&info->lock,flags);
	return 0;
}