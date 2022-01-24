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
typedef  int /*<<< orphan*/  u32 ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 int data_left ; 
 int /*<<< orphan*/  have_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hwrng *rng, int wait)
{
	int ret;

	if (data_left >= sizeof(u32))
		return 1;

again:
	if (!wait)
		return 0;

	ret = FUNC2(&have_data);
	if (ret < 0)
		return ret;

	/* Not enough?  Re-register. */
	if (FUNC1(data_left < sizeof(u32))) {
		FUNC0();
		goto again;
	}

	return 1;
}