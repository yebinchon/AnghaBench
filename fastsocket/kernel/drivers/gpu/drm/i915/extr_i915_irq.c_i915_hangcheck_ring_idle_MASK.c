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
struct intel_ring_buffer {int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  name; int /*<<< orphan*/  (* get_seqno ) (struct intel_ring_buffer*,int) ;int /*<<< orphan*/  request_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_ring_buffer*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct intel_ring_buffer *ring, bool *err)
{
	if (FUNC2(&ring->request_list) ||
	    FUNC1(ring->get_seqno(ring, false),
			      FUNC3(ring))) {
		/* Issue a wake-up to catch stuck h/w. */
		if (FUNC5(&ring->irq_queue)) {
			FUNC0("Hangcheck timer elapsed... %s idle\n",
				  ring->name);
			FUNC6(&ring->irq_queue);
			*err = true;
		}
		return true;
	}
	return false;
}