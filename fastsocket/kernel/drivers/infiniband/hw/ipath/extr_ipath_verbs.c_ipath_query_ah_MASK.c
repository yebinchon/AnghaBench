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
struct ib_ah_attr {int /*<<< orphan*/  static_rate; } ;
struct ipath_ah {struct ib_ah_attr attr; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ipath_ah* FUNC1 (struct ib_ah*) ; 

__attribute__((used)) static int FUNC2(struct ib_ah *ibah, struct ib_ah_attr *ah_attr)
{
	struct ipath_ah *ah = FUNC1(ibah);

	*ah_attr = ah->attr;
	ah_attr->static_rate = FUNC0(ah->attr.static_rate);

	return 0;
}