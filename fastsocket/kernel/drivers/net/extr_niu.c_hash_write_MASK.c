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
struct niu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FCRAM_NUM_PARTITIONS ; 
 unsigned long FCRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct niu *np, unsigned long partition,
		      unsigned long index, unsigned long num_entries,
		      u64 *data)
{
	u64 val = FUNC2(index, num_entries);
	unsigned long i;

	if (partition >= FCRAM_NUM_PARTITIONS ||
	    index + (num_entries * 8) > FCRAM_SIZE)
		return -EINVAL;

	FUNC3(FUNC0(partition), val);
	for (i = 0; i < num_entries; i++)
		FUNC3(FUNC1(partition), data[i]);

	return 0;
}