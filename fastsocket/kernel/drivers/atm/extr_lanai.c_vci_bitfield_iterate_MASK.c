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
typedef  scalar_t__ vci_t ;
struct lanai_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ NUM_VCI ; 
 scalar_t__ FUNC0 (unsigned long const*,scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long const*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct lanai_dev *lanai,
	const unsigned long *lp,
	void (*func)(struct lanai_dev *,vci_t vci))
{
	vci_t vci = FUNC0(lp, NUM_VCI);
	while (vci < NUM_VCI) {
		func(lanai, vci);
		vci = FUNC1(lp, NUM_VCI, vci + 1);
	}
}