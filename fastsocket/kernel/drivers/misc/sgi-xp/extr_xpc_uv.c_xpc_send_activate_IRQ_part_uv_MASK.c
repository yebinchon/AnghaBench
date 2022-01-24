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
struct xpc_partition {int dummy; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xpc_partition*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int xpSuccess ; 
 int FUNC2 (struct xpc_partition*,void*,size_t,int) ; 

__attribute__((used)) static void
FUNC3(struct xpc_partition *part, void *msg,
			      size_t msg_size, int msg_type)
{
	enum xp_retval ret;

	ret = FUNC2(part, msg, msg_size, msg_type);
	if (FUNC1(ret != xpSuccess))
		FUNC0(part, ret);
}