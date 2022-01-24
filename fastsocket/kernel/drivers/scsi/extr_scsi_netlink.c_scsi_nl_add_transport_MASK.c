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
typedef  size_t u8 ;
struct TYPE_2__ {int (* msg_handler ) (struct sk_buff*) ;void (* event_handler ) (struct notifier_block*,unsigned long,void*) ;scalar_t__ refcnt; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 size_t SCSI_NL_MAX_TRANSPORTS ; 
 int STATE_EHANDLER_BSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  scsi_nl_lock ; 
 int scsi_nl_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* transports ; 

int
FUNC3(u8 tport,
	int (*msg_handler)(struct sk_buff *),
	void (*event_handler)(struct notifier_block *, unsigned long, void *))
{
	unsigned long flags;
	int err = 0;

	if (tport >= SCSI_NL_MAX_TRANSPORTS)
		return -EINVAL;

	FUNC1(&scsi_nl_lock, flags);

	if (scsi_nl_state & STATE_EHANDLER_BSY) {
		FUNC2(&scsi_nl_lock, flags);
		FUNC0(1);
		FUNC1(&scsi_nl_lock, flags);
	}

	if (transports[tport].msg_handler || transports[tport].event_handler) {
		err = -EALREADY;
		goto register_out;
	}

	transports[tport].msg_handler = msg_handler;
	transports[tport].event_handler = event_handler;
	transports[tport].flags = 0;
	transports[tport].refcnt = 0;

register_out:
	FUNC2(&scsi_nl_lock, flags);

	return err;
}