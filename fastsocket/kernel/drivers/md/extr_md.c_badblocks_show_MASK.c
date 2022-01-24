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
typedef  int /*<<< orphan*/  u64 ;
struct badblocks {scalar_t__ shift; int count; int /*<<< orphan*/  lock; scalar_t__ unacked_exist; int /*<<< orphan*/ * page; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t PAGE_SIZE ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC5 (char*,size_t,char*,unsigned long long,unsigned int) ; 

__attribute__((used)) static ssize_t
FUNC6(struct badblocks *bb, char *page, int unack)
{
	size_t len;
	int i;
	u64 *p = bb->page;
	unsigned seq;

	if (bb->shift < 0)
		return 0;

retry:
	seq = FUNC3(&bb->lock);

	len = 0;
	i = 0;

	while (len < PAGE_SIZE && i < bb->count) {
		sector_t s = FUNC2(p[i]);
		unsigned int length = FUNC1(p[i]);
		int ack = FUNC0(p[i]);
		i++;

		if (unack && ack)
			continue;

		len += FUNC5(page+len, PAGE_SIZE-len, "%llu %u\n",
				(unsigned long long)s << bb->shift,
				length << bb->shift);
	}
	if (unack && len == 0)
		bb->unacked_exist = 0;

	if (FUNC4(&bb->lock, seq))
		goto retry;

	return len;
}