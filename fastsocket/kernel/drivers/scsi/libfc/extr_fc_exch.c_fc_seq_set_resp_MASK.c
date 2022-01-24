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
struct fc_seq {int dummy; } ;
struct fc_exch {void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;int /*<<< orphan*/  ex_lock; void* arg; } ;

/* Variables and functions */
 struct fc_exch* FUNC0 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fc_seq *sp,
			    void (*resp)(struct fc_seq *, struct fc_frame *,
					 void *),
			    void *arg)
{
	struct fc_exch *ep = FUNC0(sp);

	FUNC1(&ep->ex_lock);
	ep->resp = resp;
	ep->arg = arg;
	FUNC2(&ep->ex_lock);
}