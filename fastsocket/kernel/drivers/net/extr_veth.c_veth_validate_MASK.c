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
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 scalar_t__ ETH_ALEN ; 
 size_t IFLA_ADDRESS ; 
 size_t IFLA_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 

__attribute__((used)) static int FUNC5(struct nlattr *tb[], struct nlattr *data[])
{
	if (tb[IFLA_ADDRESS]) {
		if (FUNC4(tb[IFLA_ADDRESS]) != ETH_ALEN)
			return -EINVAL;
		if (!FUNC0(FUNC2(tb[IFLA_ADDRESS])))
			return -EADDRNOTAVAIL;
	}
	if (tb[IFLA_MTU]) {
		if (!FUNC1(FUNC3(tb[IFLA_MTU])))
			return -EINVAL;
	}
	return 0;
}