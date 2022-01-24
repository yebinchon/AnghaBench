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
struct t3cdev {int dummy; } ;
struct cxgbi_device {int flags; } ;

/* Variables and functions */
 int CXGBI_FLAG_ADAPTER_RESET ; 
 struct cxgbi_device* FUNC0 (struct t3cdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxgbi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cxgbi_device*,int) ; 

__attribute__((used)) static void FUNC3(struct t3cdev *t3dev)
{
	struct cxgbi_device *cdev = FUNC0(t3dev);

	if (!cdev || cdev->flags & CXGBI_FLAG_ADAPTER_RESET) {
		FUNC2("0x%p close, f 0x%x.\n", cdev, cdev ? cdev->flags : 0);
		return;
	}

	FUNC1(cdev);
}