#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kwqe {int dummy; } ;
struct TYPE_2__ {scalar_t__ pg_arr; } ;
struct cnic_local {int /*<<< orphan*/  kcq1; TYPE_1__ kwq_info; struct kwqe** kwq; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  KWQ_PAGE_CNT ; 
 int FUNC0 (struct cnic_dev*) ; 
 int FUNC1 (struct cnic_dev*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct cnic_dev*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct cnic_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*) ; 
 int FUNC5 (struct cnic_dev*) ; 

__attribute__((used)) static int FUNC6(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	int ret;

	ret = FUNC1(dev, &cp->kwq_info, KWQ_PAGE_CNT, 1);
	if (ret)
		goto error;
	cp->kwq = (struct kwqe **) cp->kwq_info.pg_arr;

	ret = FUNC2(dev, &cp->kcq1, true);
	if (ret)
		goto error;

	ret = FUNC0(dev);
	if (ret)
		goto error;

	ret = FUNC3(dev, 2);
	if (ret)
		goto error;

	ret = FUNC5(dev);
	if (ret)
		goto error;

	return 0;

error:
	FUNC4(dev);
	return ret;
}