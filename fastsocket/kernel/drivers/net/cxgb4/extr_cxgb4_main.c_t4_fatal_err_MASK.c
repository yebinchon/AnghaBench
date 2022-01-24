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
struct adapter {int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLOBALENABLE ; 
 int /*<<< orphan*/  SGE_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct adapter *adap)
{
	FUNC2(adap, SGE_CONTROL, GLOBALENABLE, 0);
	FUNC1(adap);
	FUNC0(adap->pdev_dev, "encountered fatal error, adapter stopped\n");
}