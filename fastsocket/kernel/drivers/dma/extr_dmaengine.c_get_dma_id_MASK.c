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
struct dma_device {int /*<<< orphan*/  dev_id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dma_idr ; 
 int /*<<< orphan*/  dma_list_mutex ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dma_device *device)
{
	int rc;

 idr_retry:
	if (!FUNC1(&dma_idr, GFP_KERNEL))
		return -ENOMEM;
	FUNC2(&dma_list_mutex);
	rc = FUNC0(&dma_idr, NULL, &device->dev_id);
	FUNC3(&dma_list_mutex);
	if (rc == -EAGAIN)
		goto idr_retry;
	else if (rc != 0)
		return rc;

	return 0;
}