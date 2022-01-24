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
struct vmxnet3_cmd_ring {scalar_t__ next2fill; scalar_t__ size; int /*<<< orphan*/  gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline void
FUNC2(struct vmxnet3_cmd_ring *ring)
{
	ring->next2fill++;
	if (FUNC1(ring->next2fill == ring->size)) {
		ring->next2fill = 0;
		FUNC0(ring->gen);
	}
}