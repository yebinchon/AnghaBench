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
struct ehca_sport {int /*<<< orphan*/  ibcq_aqp1; int /*<<< orphan*/ * ibqp_sqp; } ;

/* Variables and functions */
 size_t IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ehca_sport *sport)
{
	int ret;

	ret = FUNC2(sport->ibqp_sqp[IB_QPT_GSI]);
	if (ret) {
		FUNC0("Cannot destroy AQP1 QP. ret=%i", ret);
		return ret;
	}

	ret = FUNC1(sport->ibcq_aqp1);
	if (ret)
		FUNC0("Cannot destroy AQP1 CQ. ret=%i", ret);

	return ret;
}