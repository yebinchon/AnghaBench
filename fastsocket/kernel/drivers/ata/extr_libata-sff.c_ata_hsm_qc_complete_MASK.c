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
struct ata_queued_cmd {int err_mask; int /*<<< orphan*/  tag; struct ata_port* ap; } ;
struct ata_port {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sff_irq_on ) (struct ata_port*) ;scalar_t__ error_handler; } ;

/* Variables and functions */
 int AC_ERR_HSM ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_queued_cmd*) ; 
 struct ata_queued_cmd* FUNC2 (struct ata_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct ata_port*) ; 

__attribute__((used)) static void FUNC8(struct ata_queued_cmd *qc, int in_wq)
{
	struct ata_port *ap = qc->ap;
	unsigned long flags;

	if (ap->ops->error_handler) {
		if (in_wq) {
			FUNC4(ap->lock, flags);

			/* EH might have kicked in while host lock is
			 * released.
			 */
			qc = FUNC2(ap, qc->tag);
			if (qc) {
				if (FUNC3(!(qc->err_mask & AC_ERR_HSM))) {
					ap->ops->sff_irq_on(ap);
					FUNC1(qc);
				} else
					FUNC0(ap);
			}

			FUNC5(ap->lock, flags);
		} else {
			if (FUNC3(!(qc->err_mask & AC_ERR_HSM)))
				FUNC1(qc);
			else
				FUNC0(ap);
		}
	} else {
		if (in_wq) {
			FUNC4(ap->lock, flags);
			ap->ops->sff_irq_on(ap);
			FUNC1(qc);
			FUNC5(ap->lock, flags);
		} else
			FUNC1(qc);
	}
}