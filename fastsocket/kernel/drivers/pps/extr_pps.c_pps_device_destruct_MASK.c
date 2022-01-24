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
struct pps_device {int /*<<< orphan*/  id; int /*<<< orphan*/  cdev; } ;
struct device {int /*<<< orphan*/  id; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pps_device* FUNC1 (struct pps_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pps_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pps_idr ; 
 int /*<<< orphan*/  pps_idr_lock ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct pps_device *pps = FUNC1(dev);

	FUNC0(&pps->cdev);

	/* Now we can release the ID for re-use */
	FUNC6("deallocating pps%d\n", pps->id);
	FUNC4(&pps_idr_lock);
	FUNC2(&pps_idr, pps->id);
	FUNC5(&pps_idr_lock);

	FUNC3(dev);
	FUNC3(pps);
}