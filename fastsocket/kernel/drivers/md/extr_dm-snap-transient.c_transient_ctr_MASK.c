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
struct transient_c {scalar_t__ next_free; } ;
struct dm_exception_store {struct transient_c* context; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct transient_c* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dm_exception_store *store,
			 unsigned argc, char **argv)
{
	struct transient_c *tc;

	tc = FUNC0(sizeof(struct transient_c), GFP_KERNEL);
	if (!tc)
		return -ENOMEM;

	tc->next_free = 0;
	store->context = tc;

	return 0;
}