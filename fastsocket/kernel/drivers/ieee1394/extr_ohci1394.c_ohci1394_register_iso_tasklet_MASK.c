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
struct ti_ohci {int nb_iso_xmit_ctx; unsigned long it_ctx_usage; int nb_iso_rcv_ctx; unsigned long ir_ctx_usage; unsigned long ir_multichannel_used; int /*<<< orphan*/  iso_tasklet_list_lock; int /*<<< orphan*/  iso_tasklet_list; } ;
struct ohci1394_iso_tasklet {scalar_t__ type; int context; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ OHCI_ISO_MULTICHANNEL_RECEIVE ; 
 scalar_t__ OHCI_ISO_TRANSMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int,unsigned long*) ; 

int FUNC4(struct ti_ohci *ohci,
				  struct ohci1394_iso_tasklet *tasklet)
{
	unsigned long flags, *usage;
	int n, i, r = -EBUSY;

	if (tasklet->type == OHCI_ISO_TRANSMIT) {
		n = ohci->nb_iso_xmit_ctx;
		usage = &ohci->it_ctx_usage;
	}
	else {
		n = ohci->nb_iso_rcv_ctx;
		usage = &ohci->ir_ctx_usage;

		/* only one receive context can be multichannel (OHCI sec 10.4.1) */
		if (tasklet->type == OHCI_ISO_MULTICHANNEL_RECEIVE) {
			if (FUNC3(0, &ohci->ir_multichannel_used)) {
				return r;
			}
		}
	}

	FUNC1(&ohci->iso_tasklet_list_lock, flags);

	for (i = 0; i < n; i++)
		if (!FUNC3(i, usage)) {
			tasklet->context = i;
			FUNC0(&tasklet->link, &ohci->iso_tasklet_list);
			r = 0;
			break;
		}

	FUNC2(&ohci->iso_tasklet_list_lock, flags);

	return r;
}