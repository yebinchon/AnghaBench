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
 int /*<<< orphan*/  MIF_CONFIG ; 
 int /*<<< orphan*/  MIF_CONFIG_INDIRECT_MODE ; 
 int FUNC0 (struct niu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct niu *np)
{
	u64 val;

	/* XXX shared resource, lock parent XXX */
	val = FUNC1(MIF_CONFIG);
	val &= ~MIF_CONFIG_INDIRECT_MODE;
	FUNC2(MIF_CONFIG, val);

	return FUNC0(np);
}