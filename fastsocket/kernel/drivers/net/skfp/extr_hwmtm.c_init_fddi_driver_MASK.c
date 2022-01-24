#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union s_fp_descr {int dummy; } s_fp_descr ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_7__ {TYPE_4__* mb_free; TYPE_4__* mb_start; } ;
struct TYPE_8__ {union s_fp_descr volatile* descr_p; int /*<<< orphan*/  isr_flag; scalar_t__ rx_len_error; scalar_t__ rx_break; scalar_t__ detec_count; scalar_t__ queued_txd_mb; scalar_t__ queued_rx_frames; void* pass_llc_promisc; scalar_t__ pass_DB; scalar_t__ pass_NSA; scalar_t__ pass_SMT; int /*<<< orphan*/ * txd_tx_tail; int /*<<< orphan*/  txd_tx_pipe; TYPE_4__* llc_rx_tail; TYPE_4__* llc_rx_pipe; TYPE_1__ mbuf_pool; } ;
struct TYPE_9__ {TYPE_2__ hwm; } ;
struct s_smc {TYPE_3__ os; } ;
struct TYPE_10__ {int sm_use_count; } ;
typedef  TYPE_4__ SMbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_MBUF ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC5 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC6 (struct s_smc*) ; 
 scalar_t__ mb_free ; 
 void* mb_init ; 
 TYPE_4__* mb_start ; 
 int /*<<< orphan*/  FUNC7 (struct s_smc*,TYPE_4__*) ; 

void FUNC8(struct s_smc *smc, u_char *mac_addr)
{
	SMbuf	*mb ;
	int	i ;

	FUNC1(smc,mac_addr) ;
	(void)FUNC2(smc) ;

	/*
	 * initialize the SMbufs for the SMT
	 */
#ifndef	COMMON_MB_POOL
	mb = smc->os.hwm.mbuf_pool.mb_start ;
	smc->os.hwm.mbuf_pool.mb_free = (SMbuf *)NULL ;
	for (i = 0; i < MAX_MBUF; i++) {
		mb->sm_use_count = 1 ;
		FUNC7(smc,mb)	;
		mb++ ;
	}
#else
	mb = mb_start ;
	if (!mb_init) {
		mb_free = 0 ;
		for (i = 0; i < MAX_MBUF; i++) {
			mb->sm_use_count = 1 ;
			smt_free_mbuf(smc,mb)	;
			mb++ ;
		}
		mb_init = TRUE ;
	}
#endif

	/*
	 * initialize the other variables
	 */
	smc->os.hwm.llc_rx_pipe = smc->os.hwm.llc_rx_tail = (SMbuf *)NULL ;
	smc->os.hwm.txd_tx_pipe = *(smc->os.hwm.txd_tx_tail = NULL) ;
	smc->os.hwm.pass_SMT = smc->os.hwm.pass_NSA = smc->os.hwm.pass_DB = 0 ;
	smc->os.hwm.pass_llc_promisc = TRUE ;
	smc->os.hwm.queued_rx_frames = smc->os.hwm.queued_txd_mb = 0 ;
	smc->os.hwm.detec_count = 0 ;
	smc->os.hwm.rx_break = 0 ;
	smc->os.hwm.rx_len_error = 0 ;
	smc->os.hwm.isr_flag = FALSE ;

	/*
	 * make sure that the start pointer is 16 byte aligned
	 */
	i = 16 - ((long)smc->os.hwm.descr_p & 0xf) ;
	if (i != 16) {
		FUNC0("i = %d",i,0,3) ;
		smc->os.hwm.descr_p = (union s_fp_descr volatile *)
			((char *)smc->os.hwm.descr_p+i) ;
	}
	FUNC0("pt to descr area = %x",(void *)smc->os.hwm.descr_p,0,3) ;

	FUNC5(smc) ;
	FUNC4(smc) ;
	FUNC6(smc) ;

	FUNC3(smc) ;
}