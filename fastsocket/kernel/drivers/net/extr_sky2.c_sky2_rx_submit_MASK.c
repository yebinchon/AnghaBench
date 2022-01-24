#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sky2_port {int /*<<< orphan*/  rx_data_size; } ;
struct rx_ring_info {int /*<<< orphan*/ * frag_addr; int /*<<< orphan*/  skb; int /*<<< orphan*/  data_addr; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_BUFFER ; 
 int /*<<< orphan*/  OP_PACKET ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sky2_port *sky2,
			   const struct rx_ring_info *re)
{
	int i;

	FUNC1(sky2, OP_PACKET, re->data_addr, sky2->rx_data_size);

	for (i = 0; i < FUNC0(re->skb)->nr_frags; i++)
		FUNC1(sky2, OP_BUFFER, re->frag_addr[i], PAGE_SIZE);
}