#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int flags; } ;
struct mgsl_struct {int loopmode_send_done_requested; int /*<<< orphan*/  irq_spinlock; scalar_t__ tx_active; TYPE_1__ params; } ;

/* Variables and functions */
 int HDLC_FLAG_HDLC_LOOPMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mgsl_struct*) ; 

__attribute__((used)) static int FUNC3( struct mgsl_struct * info )
{
	unsigned long flags;
	
	FUNC0(&info->irq_spinlock,flags);
	if (info->params.flags & HDLC_FLAG_HDLC_LOOPMODE) {
		if (info->tx_active)
			info->loopmode_send_done_requested = true;
		else
			FUNC2(info);
	}
	FUNC1(&info->irq_spinlock,flags);

	return 0;
}