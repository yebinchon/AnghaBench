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
struct sge {int starve_thres; int /*<<< orphan*/  intrq_lock; scalar_t__* idma_state; int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  rx_timer; int /*<<< orphan*/ * timer_val; int /*<<< orphan*/ * counter_val; } ;
struct adapter {struct sge sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_DBFIFO_STATUS ; 
 int /*<<< orphan*/  A_SGE_DOORBELL_CONTROL ; 
 int EGRSTATUSPAGESIZE ; 
 int /*<<< orphan*/  FL_ALIGN ; 
 unsigned int FL_PG_ORDER ; 
 int F_ENABLE_DROP ; 
 int FUNC0 (unsigned int) ; 
 int INGPADBOUNDARY_MASK ; 
 int /*<<< orphan*/  M_HP_INT_THRESH ; 
 int /*<<< orphan*/  M_LP_INT_THRESH ; 
 int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int FUNC1 (int) ; 
 int PKTSHIFT_MASK ; 
 int RXPKTCPLMODE ; 
 int /*<<< orphan*/  SGE_CONTROL ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE0 ; 
 int /*<<< orphan*/  SGE_FL_BUFFER_SIZE1 ; 
 int /*<<< orphan*/  SGE_HOST_PAGE_SIZE ; 
 int /*<<< orphan*/  SGE_INGRESS_RX_THRESHOLD ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_0_AND_1 ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_2_AND_3 ; 
 int /*<<< orphan*/  SGE_TIMER_VALUE_4_AND_5 ; 
 int STAT_LEN ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct adapter*) ; 
 int /*<<< orphan*/  dbfifo_int_thresh ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  sge_rx_timer_cb ; 
 int /*<<< orphan*/  sge_tx_timer_cb ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC17(struct adapter *adap)
{
	unsigned int i, v;
	struct sge *s = &adap->sge;
	unsigned int fl_align_log = FUNC11(FL_ALIGN);

	FUNC14(adap, SGE_CONTROL, PKTSHIFT_MASK |
			 INGPADBOUNDARY_MASK | EGRSTATUSPAGESIZE,
			 FUNC0(fl_align_log - 5) | FUNC1(2) |
			 RXPKTCPLMODE |
			 (STAT_LEN == 128 ? EGRSTATUSPAGESIZE : 0));

	FUNC14(adap, A_SGE_DBFIFO_STATUS,
			FUNC8(M_HP_INT_THRESH) |
			FUNC9(M_LP_INT_THRESH),
			FUNC8(dbfifo_int_thresh) |
			FUNC9(dbfifo_int_thresh));
	FUNC14(adap, A_SGE_DOORBELL_CONTROL, F_ENABLE_DROP,
			F_ENABLE_DROP);

	for (i = v = 0; i < 32; i += 4)
		v |= (PAGE_SHIFT - 10) << i;
	FUNC15(adap, SGE_HOST_PAGE_SIZE, v);
	FUNC15(adap, SGE_FL_BUFFER_SIZE0, PAGE_SIZE);
#if FL_PG_ORDER > 0
	t4_write_reg(adap, SGE_FL_BUFFER_SIZE1, PAGE_SIZE << FL_PG_ORDER);
#endif
	FUNC15(adap, SGE_INGRESS_RX_THRESHOLD,
		     FUNC2(s->counter_val[0]) |
		     FUNC3(s->counter_val[1]) |
		     FUNC4(s->counter_val[2]) |
		     FUNC5(s->counter_val[3]));
	FUNC15(adap, SGE_TIMER_VALUE_0_AND_1,
		     FUNC6(FUNC16(adap, s->timer_val[0])) |
		     FUNC7(FUNC16(adap, s->timer_val[1])));
	FUNC15(adap, SGE_TIMER_VALUE_2_AND_3,
		     FUNC6(FUNC16(adap, s->timer_val[2])) |
		     FUNC7(FUNC16(adap, s->timer_val[3])));
	FUNC15(adap, SGE_TIMER_VALUE_4_AND_5,
		     FUNC6(FUNC16(adap, s->timer_val[4])) |
		     FUNC7(FUNC16(adap, s->timer_val[5])));
	FUNC12(&s->rx_timer, sge_rx_timer_cb, (unsigned long)adap);
	FUNC12(&s->tx_timer, sge_tx_timer_cb, (unsigned long)adap);
	s->starve_thres = FUNC10(adap) * 1000000;  /* 1 s */
	s->idma_state[0] = s->idma_state[1] = 0;
	FUNC13(&s->intrq_lock);
}