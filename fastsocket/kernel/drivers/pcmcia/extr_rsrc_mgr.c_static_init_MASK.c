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
struct pcmcia_socket {int resource_setup_done; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_socket *s)
{
	unsigned long flags;

	/* the good thing about SS_CAP_STATIC_MAP sockets is
	 * that they don't need a resource database */

	FUNC0(&s->lock, flags);
	s->resource_setup_done = 1;
	FUNC1(&s->lock, flags);

	return 0;
}