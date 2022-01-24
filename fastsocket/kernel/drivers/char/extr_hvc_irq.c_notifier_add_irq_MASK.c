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
struct hvc_struct {int irq_requested; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  hvc_handle_interrupt ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct hvc_struct*) ; 

int FUNC1(struct hvc_struct *hp, int irq)
{
	int rc;

	if (!irq) {
		hp->irq_requested = 0;
		return 0;
	}
	rc = FUNC0(irq, hvc_handle_interrupt, IRQF_DISABLED,
			   "hvc_console", hp);
	if (!rc)
		hp->irq_requested = 1;
	return rc;
}