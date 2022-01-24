#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * pbl_addrs; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pbl_addrs; void* page_type_perms; void* va_base_lo_fbo; void* va_base_hi; void* len; void* stag; } ;
union t3_wr {TYPE_2__ pbl_frag; TYPE_1__ fastreg; } ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct t3_wq {int /*<<< orphan*/  size_log2; scalar_t__ wptr; scalar_t__ queue; } ;
struct TYPE_9__ {int page_list_len; int rkey; int length; int iova_start; TYPE_3__* page_list; int /*<<< orphan*/  access_flags; scalar_t__ page_shift; } ;
struct TYPE_10__ {TYPE_4__ fast_reg; } ;
struct ib_send_wr {TYPE_5__ wr; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_8__ {scalar_t__* page_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T3_EOP ; 
 int T3_MAX_FASTREG_DEPTH ; 
 int T3_MAX_FASTREG_FRAG ; 
 int /*<<< orphan*/  T3_WR_FASTREG ; 
 int /*<<< orphan*/  TPT_VATO ; 
 int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(union t3_wr *wqe, struct ib_send_wr *wr,
				u8 *flit_cnt, int *wr_cnt, struct t3_wq *wq)
{
	int i;
	__be64 *p;

	if (wr->wr.fast_reg.page_list_len > T3_MAX_FASTREG_DEPTH)
		return -EINVAL;
	*wr_cnt = 1;
	wqe->fastreg.stag = FUNC7(wr->wr.fast_reg.rkey);
	wqe->fastreg.len = FUNC7(wr->wr.fast_reg.length);
	wqe->fastreg.va_base_hi = FUNC7(wr->wr.fast_reg.iova_start >> 32);
	wqe->fastreg.va_base_lo_fbo =
				FUNC7(wr->wr.fast_reg.iova_start & 0xffffffff);
	wqe->fastreg.page_type_perms = FUNC7(
		FUNC2(wr->wr.fast_reg.page_list_len) |
		FUNC3(wr->wr.fast_reg.page_shift-12) |
		FUNC5(TPT_VATO) |
		FUNC4(FUNC9(wr->wr.fast_reg.access_flags)));
	p = &wqe->fastreg.pbl_addrs[0];
	for (i = 0; i < wr->wr.fast_reg.page_list_len; i++, p++) {

		/* If we need a 2nd WR, then set it up */
		if (i == T3_MAX_FASTREG_FRAG) {
			*wr_cnt = 2;
			wqe = (union t3_wr *)(wq->queue +
				FUNC1((wq->wptr+1), wq->size_log2));
			FUNC6((void *)wqe, T3_WR_FASTREG, 0,
			       FUNC0(wq->wptr + 1, wq->size_log2),
			       0, 1 + wr->wr.fast_reg.page_list_len - T3_MAX_FASTREG_FRAG,
			       T3_EOP);

			p = &wqe->pbl_frag.pbl_addrs[0];
		}
		*p = FUNC8((u64)wr->wr.fast_reg.page_list->page_list[i]);
	}
	*flit_cnt = 5 + wr->wr.fast_reg.page_list_len;
	if (*flit_cnt > 15)
		*flit_cnt = 15;
	return 0;
}