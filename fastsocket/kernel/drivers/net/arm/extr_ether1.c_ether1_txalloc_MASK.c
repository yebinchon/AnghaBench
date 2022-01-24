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
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_tail; int tx_head; } ;

/* Variables and functions */
 int TX_AREA_END ; 
 int TX_AREA_START ; 
 TYPE_1__* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int
FUNC1 (struct net_device *dev, int size)
{
	int start, tail;

	size = (size + 1) & ~1;
	tail = FUNC0(dev)->tx_tail;

	if (FUNC0(dev)->tx_head + size > TX_AREA_END) {
		if (tail > FUNC0(dev)->tx_head)
			return -1;
		start = TX_AREA_START;
		if (start + size > tail)
			return -1;
		FUNC0(dev)->tx_head = start + size;
	} else {
		if (FUNC0(dev)->tx_head < tail && (FUNC0(dev)->tx_head + size) > tail)
			return -1;
		start = FUNC0(dev)->tx_head;
		FUNC0(dev)->tx_head += size;
	}

	return start;
}