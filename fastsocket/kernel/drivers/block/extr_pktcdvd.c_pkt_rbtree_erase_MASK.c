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
struct pktcdvd_device {scalar_t__ bio_queue_size; int /*<<< orphan*/  rb_pool; int /*<<< orphan*/  bio_queue; } ;
struct pkt_rb_node {int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pkt_rb_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pktcdvd_device *pd, struct pkt_rb_node *node)
{
	FUNC2(&node->rb_node, &pd->bio_queue);
	FUNC1(node, pd->rb_pool);
	pd->bio_queue_size--;
	FUNC0(pd->bio_queue_size < 0);
}