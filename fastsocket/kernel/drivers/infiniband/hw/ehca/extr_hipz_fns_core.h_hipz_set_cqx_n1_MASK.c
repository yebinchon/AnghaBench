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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  kernel; } ;
struct ehca_cq {TYPE_1__ galpas; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQX_N1_GENERATE_COMP_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cqx_n1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ehca_cq *cq, u32 value)
{
	u64 cqx_n1_reg;

	FUNC2(cq->galpas.kernel, cqx_n1,
			    FUNC0(CQX_N1_GENERATE_COMP_EVENT, value));
	cqx_n1_reg = FUNC1(cq->galpas.kernel, cqx_n1);
}