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
struct vlsi_ring {int mask; struct ring_descr* rd; int /*<<< orphan*/  head; int /*<<< orphan*/  tail; } ;
struct ring_descr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct ring_descr *FUNC1(struct vlsi_ring *r)
{
	int t;

	t = FUNC0(&r->tail) & r->mask;
	return (((t+1) & r->mask) == (FUNC0(&r->head) & r->mask)) ? NULL : &r->rd[t];
}