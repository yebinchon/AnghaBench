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
typedef  size_t uint32_t ;
struct port_info {int in_end; int in_start; int /*<<< orphan*/ * in_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t VTTY_PORTS ; 
 int /*<<< orphan*/  consolelock ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 struct port_info* port_info ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(uint32_t vtermno, char *buf, int count)
{
	struct port_info *pi;
	int n = 0;
	unsigned long flags;

	if (vtermno >= VTTY_PORTS)
		return -EINVAL;
	if (count == 0)
		return 0;

	pi = &port_info[vtermno];
	FUNC1(&consolelock, flags);

	if (pi->in_end == 0)
		goto done;

	n = pi->in_end - pi->in_start;
	if (n > count)
		n = count;
	FUNC0(buf, &pi->in_buf[pi->in_start], n);
	pi->in_start += n;
	if (pi->in_start == pi->in_end) {
		pi->in_start = 0;
		pi->in_end = 0;
	}
done:
	FUNC2(&consolelock, flags);
	return n;
}