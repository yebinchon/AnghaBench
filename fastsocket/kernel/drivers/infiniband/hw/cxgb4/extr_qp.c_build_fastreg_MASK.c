#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* va_lo_fbo; void* va_hi; void* stag; void* len_lo; scalar_t__ len_hi; int /*<<< orphan*/  mem_perms; int /*<<< orphan*/  addr_type; scalar_t__ pgsz_shift; scalar_t__ qpbinde_to_dcacpu; } ;
union t4_wr {TYPE_1__ fr; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct t4_sq {size_t size; int /*<<< orphan*/ * queue; } ;
struct TYPE_7__ {int page_list_len; int length; int rkey; int iova_start; TYPE_2__* page_list; int /*<<< orphan*/  access_flags; scalar_t__ page_shift; } ;
struct TYPE_8__ {TYPE_3__ fast_reg; } ;
struct ib_send_wr {TYPE_4__ wr; } ;
struct fw_ri_immd {void* immdlen; scalar_t__ r2; scalar_t__ r1; int /*<<< orphan*/  op; } ;
typedef  scalar_t__ __be64 ;
struct TYPE_6__ {int /*<<< orphan*/ * page_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FW_RI_DATA_IMMD ; 
 int /*<<< orphan*/  FW_RI_VA_BASED_TO ; 
 int T4_MAX_FR_DEPTH ; 
 int T4_MAX_FR_IMMD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct t4_sq *sq, union t4_wr *wqe,
			 struct ib_send_wr *wr, u8 *len16)
{

	struct fw_ri_immd *imdp;
	__be64 *p;
	int i;
	int pbllen = FUNC6(wr->wr.fast_reg.page_list_len * sizeof(u64), 32);
	int rem;

	if (wr->wr.fast_reg.page_list_len > T4_MAX_FR_DEPTH)
		return -EINVAL;

	wqe->fr.qpbinde_to_dcacpu = 0;
	wqe->fr.pgsz_shift = wr->wr.fast_reg.page_shift - 12;
	wqe->fr.addr_type = FW_RI_VA_BASED_TO;
	wqe->fr.mem_perms = FUNC3(wr->wr.fast_reg.access_flags);
	wqe->fr.len_hi = 0;
	wqe->fr.len_lo = FUNC4(wr->wr.fast_reg.length);
	wqe->fr.stag = FUNC4(wr->wr.fast_reg.rkey);
	wqe->fr.va_hi = FUNC4(wr->wr.fast_reg.iova_start >> 32);
	wqe->fr.va_lo_fbo = FUNC4(wr->wr.fast_reg.iova_start &
					0xffffffff);
	FUNC2(pbllen > T4_MAX_FR_IMMD);
	imdp = (struct fw_ri_immd *)(&wqe->fr + 1);
	imdp->op = FW_RI_DATA_IMMD;
	imdp->r1 = 0;
	imdp->r2 = 0;
	imdp->immdlen = FUNC4(pbllen);
	p = (__be64 *)(imdp + 1);
	rem = pbllen;
	for (i = 0; i < wr->wr.fast_reg.page_list_len; i++) {
		*p = FUNC5((u64)wr->wr.fast_reg.page_list->page_list[i]);
		rem -= sizeof *p;
		if (++p == (__be64 *)&sq->queue[sq->size])
			p = (__be64 *)sq->queue;
	}
	FUNC0(rem < 0);
	while (rem) {
		*p = 0;
		rem -= sizeof *p;
		if (++p == (__be64 *)&sq->queue[sq->size])
			p = (__be64 *)sq->queue;
	}
	*len16 = FUNC1(sizeof wqe->fr + sizeof *imdp + pbllen, 16);
	return 0;
}