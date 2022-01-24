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
struct i2o_block_request {int /*<<< orphan*/  sg_table; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i2o_block_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  I2O_MAX_PHYS_SEGMENTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ i2o_blk_req_pool ; 
 struct i2o_block_request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct i2o_block_request *FUNC4(void)
{
	struct i2o_block_request *ireq;

	ireq = FUNC2(i2o_blk_req_pool.pool, GFP_ATOMIC);
	if (!ireq)
		return FUNC0(-ENOMEM);

	FUNC1(&ireq->queue);
	FUNC3(ireq->sg_table, I2O_MAX_PHYS_SEGMENTS);

	return ireq;
}