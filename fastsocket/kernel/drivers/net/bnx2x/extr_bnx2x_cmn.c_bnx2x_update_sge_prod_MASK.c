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
typedef  size_t u16 ;
struct TYPE_2__ {int /*<<< orphan*/ * sgl; } ;
struct eth_end_agg_rx_cqe {TYPE_1__ sgl_or_raw_data; } ;
struct bnx2x_fastpath {size_t last_max_sge; size_t rx_sge_prod; int /*<<< orphan*/ * sge_mask; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  BIT_VEC64_ELEM_ONE_MASK ; 
 size_t BIT_VEC64_ELEM_SHIFT ; 
 size_t BIT_VEC64_ELEM_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 int /*<<< orphan*/  NETIF_MSG_RX_STATUS ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_fastpath*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_fastpath*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static inline void FUNC9(struct bnx2x_fastpath *fp,
					 u16 sge_len,
					 struct eth_end_agg_rx_cqe *cqe)
{
	struct bnx2x *bp = fp->bp;
	u16 last_max, last_elem, first_elem;
	u16 delta = 0;
	u16 i;

	if (!sge_len)
		return;

	/* First mark all used pages */
	for (i = 0; i < sge_len; i++)
		FUNC0(fp->sge_mask,
			FUNC3(FUNC6(cqe->sgl_or_raw_data.sgl[i])));

	FUNC1(NETIF_MSG_RX_STATUS, "fp_cqe->sgl[%d] = %d\n",
	   sge_len - 1, FUNC6(cqe->sgl_or_raw_data.sgl[sge_len - 1]));

	/* Here we assume that the last SGE index is the biggest */
	FUNC8((void *)(fp->sge_mask));
	FUNC5(fp,
		FUNC6(cqe->sgl_or_raw_data.sgl[sge_len - 1]));

	last_max = FUNC3(fp->last_max_sge);
	last_elem = last_max >> BIT_VEC64_ELEM_SHIFT;
	first_elem = FUNC3(fp->rx_sge_prod) >> BIT_VEC64_ELEM_SHIFT;

	/* If ring is not full */
	if (last_elem + 1 != first_elem)
		last_elem++;

	/* Now update the prod */
	for (i = first_elem; i != last_elem; i = FUNC2(i)) {
		if (FUNC7(fp->sge_mask[i]))
			break;

		fp->sge_mask[i] = BIT_VEC64_ELEM_ONE_MASK;
		delta += BIT_VEC64_ELEM_SZ;
	}

	if (delta > 0) {
		fp->rx_sge_prod += delta;
		/* clear page-end entries */
		FUNC4(fp);
	}

	FUNC1(NETIF_MSG_RX_STATUS,
	   "fp->last_max_sge = %d  fp->rx_sge_prod = %d\n",
	   fp->last_max_sge, fp->rx_sge_prod);
}