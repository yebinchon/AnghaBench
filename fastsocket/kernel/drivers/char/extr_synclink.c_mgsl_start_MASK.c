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
struct tty_struct {int /*<<< orphan*/  name; struct mgsl_struct* driver_data; } ;
struct mgsl_struct {int /*<<< orphan*/  irq_spinlock; int /*<<< orphan*/  tx_enabled; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
 scalar_t__ debug_level ; 
 scalar_t__ FUNC0 (struct mgsl_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mgsl_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct mgsl_struct *info = tty->driver_data;
	unsigned long flags;
	
	if (FUNC0(info, tty->name, "mgsl_start"))
		return;
	
	if ( debug_level >= DEBUG_LEVEL_INFO )
		FUNC1("mgsl_start(%s)\n",info->device_name);	
		
	FUNC2(&info->irq_spinlock,flags);
	if (!info->tx_enabled)
	 	FUNC4(info);
	FUNC3(&info->irq_spinlock,flags);
	
}