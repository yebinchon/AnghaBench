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
struct virtnet_info {scalar_t__ num; scalar_t__ max; int /*<<< orphan*/  rvq; scalar_t__ big_packets; scalar_t__ mergeable_rx_bufs; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct virtnet_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct virtnet_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct virtnet_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct virtnet_info *vi, gfp_t gfp)
{
	int err;
	bool oom;

	do {
		if (vi->mergeable_rx_bufs)
			err = FUNC1(vi, gfp);
		else if (vi->big_packets)
			err = FUNC0(vi, gfp);
		else
			err = FUNC2(vi, gfp);

		oom = err == -ENOMEM;
		if (err < 0)
			break;
		++vi->num;
	} while (err > 0);
	if (FUNC3(vi->num > vi->max))
		vi->max = vi->num;
	FUNC4(vi->rvq);
	return !oom;
}