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
struct rdma_id_private {int dummy; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int FUNC0 (struct idr*,struct rdma_id_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct idr*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct idr *ps, struct rdma_id_private *id_priv)
{
	static unsigned int last_used_port;
	int low, high, remaining;
	unsigned int rover;

	FUNC2(&low, &high);
	remaining = (high - low) + 1;
	rover = FUNC3() % remaining + low;
retry:
	if (last_used_port != rover &&
	    !FUNC1(ps, (unsigned short) rover)) {
		int ret = FUNC0(ps, id_priv, rover);
		/*
		 * Remember previously used port number in order to avoid
		 * re-using same port immediately after it is closed.
		 */
		if (!ret)
			last_used_port = rover;
		if (ret != -EADDRNOTAVAIL)
			return ret;
	}
	if (--remaining) {
		rover++;
		if ((rover < low) || (rover > high))
			rover = low;
		goto retry;
	}
	return -EADDRNOTAVAIL;
}