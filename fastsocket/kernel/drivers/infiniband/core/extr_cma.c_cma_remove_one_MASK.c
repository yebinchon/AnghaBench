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
struct ib_device {int dummy; } ;
struct cma_device {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  cma_client ; 
 int /*<<< orphan*/  FUNC0 (struct cma_device*) ; 
 struct cma_device* FUNC1 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cma_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ib_device *device)
{
	struct cma_device *cma_dev;

	cma_dev = FUNC1(device, &cma_client);
	if (!cma_dev)
		return;

	FUNC4(&lock);
	FUNC3(&cma_dev->list);
	FUNC5(&lock);

	FUNC0(cma_dev);
	FUNC2(cma_dev);
}