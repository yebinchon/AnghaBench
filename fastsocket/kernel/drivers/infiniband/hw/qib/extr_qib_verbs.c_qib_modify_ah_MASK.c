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
struct ib_ah_attr {int dummy; } ;
struct qib_ah {struct ib_ah_attr attr; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ib_ah_attr*) ; 
 struct qib_ah* FUNC1 (struct ib_ah*) ; 

__attribute__((used)) static int FUNC2(struct ib_ah *ibah, struct ib_ah_attr *ah_attr)
{
	struct qib_ah *ah = FUNC1(ibah);

	if (FUNC0(ibah->device, ah_attr))
		return -EINVAL;

	ah->attr = *ah_attr;

	return 0;
}