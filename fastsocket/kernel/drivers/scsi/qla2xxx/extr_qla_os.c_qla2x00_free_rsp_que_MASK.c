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
struct rsp_que {int length_fx00; int length; int /*<<< orphan*/  dma; scalar_t__ ring; int /*<<< orphan*/  dma_fx00; scalar_t__ ring_fx00; } ;
struct qla_hw_data {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  response_t ;
typedef  int /*<<< orphan*/  request_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsp_que*) ; 

__attribute__((used)) static void FUNC3(struct qla_hw_data *ha, struct rsp_que *rsp)
{
	if (FUNC0(ha)) {
		if (rsp && rsp->ring)
			FUNC1(&ha->pdev->dev,
			    (rsp->length_fx00 + 1) * sizeof(request_t),
			    rsp->ring_fx00, rsp->dma_fx00);
	} else if (rsp && rsp->ring) {
		FUNC1(&ha->pdev->dev,
		(rsp->length + 1) * sizeof(response_t),
		rsp->ring, rsp->dma);
	}
	FUNC2(rsp);
	rsp = NULL;
}