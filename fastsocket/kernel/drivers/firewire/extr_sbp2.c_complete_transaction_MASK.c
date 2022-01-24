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
struct sbp2_orb {int rcode; int /*<<< orphan*/  kref; int /*<<< orphan*/  (* callback ) (struct sbp2_orb*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  link; } ;
struct fw_card {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  free_orb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct sbp2_orb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fw_card *card, int rcode,
				 void *payload, size_t length, void *data)
{
	struct sbp2_orb *orb = data;
	unsigned long flags;

	/*
	 * This is a little tricky.  We can get the status write for
	 * the orb before we get this callback.  The status write
	 * handler above will assume the orb pointer transaction was
	 * successful and set the rcode to RCODE_COMPLETE for the orb.
	 * So this callback only sets the rcode if it hasn't already
	 * been set and only does the cleanup if the transaction
	 * failed and we didn't already get a status write.
	 */
	FUNC2(&card->lock, flags);

	if (orb->rcode == -1)
		orb->rcode = rcode;
	if (orb->rcode != RCODE_COMPLETE) {
		FUNC1(&orb->link);
		FUNC3(&card->lock, flags);
		orb->callback(orb, NULL);
	} else {
		FUNC3(&card->lock, flags);
	}

	FUNC0(&orb->kref, free_orb);
}