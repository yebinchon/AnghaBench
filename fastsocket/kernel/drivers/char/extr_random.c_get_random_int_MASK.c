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
typedef  unsigned int __u32 ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int*) ; 
 TYPE_1__* current ; 
 unsigned int* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  get_random_int_hash ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  random_int_secret ; 

unsigned int FUNC5(void)
{
	__u32 *hash;
	unsigned int ret;

	if (FUNC0(&ret))
		return ret;

	hash = FUNC1(get_random_int_hash);

	hash[0] += current->pid + jiffies + FUNC2();
	FUNC3(hash, random_int_secret);
	ret = hash[0];
	FUNC4(get_random_int_hash);

	return ret;
}