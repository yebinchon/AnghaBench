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
struct xpc_partition {scalar_t__ disengage_timeout; } ;
struct TYPE_2__ {int (* partition_engaged ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  FUNC4 (struct xpc_partition*) ; 

__attribute__((used)) static void
FUNC5(unsigned long data)
{
	struct xpc_partition *part = (struct xpc_partition *)data;

	FUNC0(FUNC3(part->disengage_timeout));

	(void)FUNC4(part);

	FUNC0(part->disengage_timeout != 0);
	FUNC0(xpc_arch_ops.partition_engaged(FUNC1(part)));
}