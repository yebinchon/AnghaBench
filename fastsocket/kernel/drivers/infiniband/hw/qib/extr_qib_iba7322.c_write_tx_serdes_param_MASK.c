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
typedef  int u64 ;
struct txdds_ent {int amp; int main; int post; int pre; } ;
struct qib_pportdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBSD_TX_DEEMPHASIS_OVERRIDE_0 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  krp_tx_deemph_override ; 
 int FUNC3 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tx_override_deemphasis_select ; 
 int /*<<< orphan*/  txampcntl_d2a ; 
 int /*<<< orphan*/  txc0_ena ; 
 int /*<<< orphan*/  txcn1_ena ; 
 int /*<<< orphan*/  txcp1_ena ; 

__attribute__((used)) static void FUNC5(struct qib_pportdata *ppd,
				  struct txdds_ent *txdds)
{
	u64 deemph;

	deemph = FUNC3(ppd, krp_tx_deemph_override);
	/* field names for amp, main, post, pre, respectively */
	deemph &= ~(FUNC1(IBSD_TX_DEEMPHASIS_OVERRIDE_0, txampcntl_d2a) |
		    FUNC1(IBSD_TX_DEEMPHASIS_OVERRIDE_0, txc0_ena) |
		    FUNC1(IBSD_TX_DEEMPHASIS_OVERRIDE_0, txcp1_ena) |
		    FUNC1(IBSD_TX_DEEMPHASIS_OVERRIDE_0, txcn1_ena));

	deemph |= FUNC1(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
			   tx_override_deemphasis_select);
	deemph |= (txdds->amp & FUNC2(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
		    txampcntl_d2a)) << FUNC0(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
				       txampcntl_d2a);
	deemph |= (txdds->main & FUNC2(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
		     txc0_ena)) << FUNC0(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
				   txc0_ena);
	deemph |= (txdds->post & FUNC2(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
		     txcp1_ena)) << FUNC0(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
				    txcp1_ena);
	deemph |= (txdds->pre & FUNC2(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
		     txcn1_ena)) << FUNC0(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
				    txcn1_ena);
	FUNC4(ppd, krp_tx_deemph_override, deemph);
}