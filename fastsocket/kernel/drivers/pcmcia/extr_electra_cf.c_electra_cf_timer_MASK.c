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
struct electra_cf_socket {int present; int /*<<< orphan*/  timer; scalar_t__ active; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 scalar_t__ POLL_INTERVAL ; 
 int /*<<< orphan*/  SS_DETECT ; 
 int FUNC0 (struct electra_cf_socket*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned long _cf)
{
	struct electra_cf_socket *cf = (void *) _cf;
	int present = FUNC0(cf);

	if (present != cf->present) {
		cf->present = present;
		FUNC2(&cf->socket, SS_DETECT);
	}

	if (cf->active)
		FUNC1(&cf->timer, jiffies + POLL_INTERVAL);
}