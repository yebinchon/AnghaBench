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
struct scb_tailq {int dummy; } ;
struct scb {int flags; } ;
struct ahc_softc {scalar_t__ untagged_queue_lock; } ;

/* Variables and functions */
 int SCB_ACTIVE ; 
 struct scb* FUNC0 (struct scb_tailq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,struct scb*) ; 

__attribute__((used)) static void
FUNC2(struct ahc_softc *ahc, struct scb_tailq *queue)
{
	struct scb *scb;

	if (ahc->untagged_queue_lock != 0)
		return;

	if ((scb = FUNC0(queue)) != NULL
	 && (scb->flags & SCB_ACTIVE) == 0) {
		scb->flags |= SCB_ACTIVE;
		FUNC1(ahc, scb);
	}
}