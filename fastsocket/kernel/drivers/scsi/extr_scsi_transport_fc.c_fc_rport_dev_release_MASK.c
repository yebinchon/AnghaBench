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
struct fc_rport {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct fc_rport* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct fc_rport *rport = FUNC0(dev);
	FUNC2(dev->parent);
	FUNC1(rport);
}