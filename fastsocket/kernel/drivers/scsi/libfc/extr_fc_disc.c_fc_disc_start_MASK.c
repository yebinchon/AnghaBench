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
struct fc_disc {void (* disc_callback ) (struct fc_lport*,int) ;int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {struct fc_disc disc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_disc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void (*disc_callback)(struct fc_lport *,
						enum fc_disc_event),
			  struct fc_lport *lport)
{
	struct fc_disc *disc = &lport->disc;

	/*
	 * At this point we may have a new disc job or an existing
	 * one. Either way, let's lock when we make changes to it
	 * and send the GPN_FT request.
	 */
	FUNC1(&disc->disc_mutex);
	disc->disc_callback = disc_callback;
	FUNC0(disc);
	FUNC2(&disc->disc_mutex);
}