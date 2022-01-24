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
typedef  int uint32_t ;
struct qla_hw_data {int /*<<< orphan*/  fce; scalar_t__* fce_mb; int /*<<< orphan*/  fce_dma; int /*<<< orphan*/  fce_bufs; } ;
struct qla2xxx_fce_chain {int type; int* eregs; void* size; void* addr_h; void* addr_l; void* chain_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_CHAIN_FCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (void*) ; 

__attribute__((used)) static inline void *
FUNC7(struct qla_hw_data *ha, void *ptr, uint32_t **last_chain)
{
	uint32_t cnt;
	uint32_t *iter_reg;
	struct qla2xxx_fce_chain *fcec = ptr;

	if (!ha->fce)
		return ptr;

	*last_chain = &fcec->type;
	fcec->type = FUNC2(DUMP_CHAIN_FCE);
	fcec->chain_size = FUNC4(sizeof(struct qla2xxx_fce_chain) +
	    FUNC3(ha->fce_bufs));
	fcec->size = FUNC4(FUNC3(ha->fce_bufs));
	fcec->addr_l = FUNC4(FUNC0(ha->fce_dma));
	fcec->addr_h = FUNC4(FUNC1(ha->fce_dma));

	iter_reg = fcec->eregs;
	for (cnt = 0; cnt < 8; cnt++)
		*iter_reg++ = FUNC4(ha->fce_mb[cnt]);

	FUNC5(iter_reg, ha->fce, FUNC6(fcec->size));

	return (void *)iter_reg + FUNC6(fcec->size);
}