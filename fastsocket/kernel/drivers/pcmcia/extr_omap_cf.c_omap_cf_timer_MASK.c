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
struct omap_cf_socket {unsigned int present; int /*<<< orphan*/  timer; scalar_t__ active; int /*<<< orphan*/  socket; } ;

/* Variables and functions */
 scalar_t__ POLL_INTERVAL ; 
 int /*<<< orphan*/  SS_DETECT ; 
 int /*<<< orphan*/  driver_name ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(unsigned long _cf)
{
	struct omap_cf_socket	*cf = (void *) _cf;
	unsigned		present = FUNC1();

	if (present != cf->present) {
		cf->present = present;
		FUNC3("%s: card %s\n", driver_name,
			present ? "present" : "gone");
		FUNC2(&cf->socket, SS_DETECT);
	}

	if (cf->active)
		FUNC0(&cf->timer, jiffies + POLL_INTERVAL);
}