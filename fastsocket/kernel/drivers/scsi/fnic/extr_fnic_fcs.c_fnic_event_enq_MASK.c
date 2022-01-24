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
struct fnic_event {int event; int /*<<< orphan*/  list; struct fnic* fnic; } ;
struct fnic {int /*<<< orphan*/  event_work; int /*<<< orphan*/  fnic_lock; int /*<<< orphan*/  evlist; } ;
typedef  enum fnic_evt { ____Placeholder_fnic_evt } fnic_evt ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct fnic_event* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct fnic *fnic, enum fnic_evt ev)
{
	struct fnic_event *fevt;
	unsigned long flags;

	fevt = FUNC0(sizeof(*fevt), GFP_ATOMIC);
	if (!fevt)
		return;

	fevt->fnic = fnic;
	fevt->event = ev;

	FUNC3(&fnic->fnic_lock, flags);
	FUNC1(&fevt->list, &fnic->evlist);
	FUNC4(&fnic->fnic_lock, flags);

	FUNC2(&fnic->event_work);
}