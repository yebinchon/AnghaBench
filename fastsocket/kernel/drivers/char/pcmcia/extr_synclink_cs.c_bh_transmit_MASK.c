#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_name; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_BH ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(MGSLPC_INFO *info, struct tty_struct *tty)
{
	if (debug_level >= DEBUG_LEVEL_BH)
		FUNC0("bh_transmit() entry on %s\n", info->device_name);

	if (tty)
		FUNC1(tty);
}