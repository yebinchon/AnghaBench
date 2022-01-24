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
struct virtnet_info {scalar_t__ num; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; int /*<<< orphan*/  rvq; int /*<<< orphan*/  svq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtnet_info*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct virtnet_info *vi)
{
	void *buf;
	while (1) {
		buf = FUNC3(vi->svq);
		if (!buf)
			break;
		FUNC1(buf);
	}
	while (1) {
		buf = FUNC3(vi->rvq);
		if (!buf)
			break;
		if (vi->mergeable_rx_bufs || vi->big_packets)
			FUNC2(vi, buf);
		else
			FUNC1(buf);
		--vi->num;
	}
	FUNC0(vi->num != 0);
}