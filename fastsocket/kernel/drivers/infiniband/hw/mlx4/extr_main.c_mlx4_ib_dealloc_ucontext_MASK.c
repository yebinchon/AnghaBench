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
struct mlx4_ib_ucontext {int /*<<< orphan*/  uar; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_ib_ucontext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_ucontext* FUNC3 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC4(struct ib_ucontext *ibcontext)
{
	struct mlx4_ib_ucontext *context = FUNC3(ibcontext);

	FUNC1(FUNC2(ibcontext->device)->dev, &context->uar);
	FUNC0(context);

	return 0;
}