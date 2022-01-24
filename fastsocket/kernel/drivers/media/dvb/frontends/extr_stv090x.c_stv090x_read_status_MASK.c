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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int /*<<< orphan*/  DMDSTATE ; 
 int /*<<< orphan*/  DSTATUS ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int /*<<< orphan*/  HEADER_MODE_FIELD ; 
 int /*<<< orphan*/  LOCKEDVIT_FIELD ; 
 int /*<<< orphan*/  LOCK_DEFINITIF_FIELD ; 
 int /*<<< orphan*/  PDELSTATUS1 ; 
 int /*<<< orphan*/  PKTDELIN_LOCK_FIELD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSFIFO_LINEOK_FIELD ; 
 int /*<<< orphan*/  TSSTATUS ; 
 int /*<<< orphan*/  VSTATUSVIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, enum fe_status *status)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg;
	u8 search_state;

	reg = FUNC1(state, DMDSTATE);
	search_state = FUNC0(reg, HEADER_MODE_FIELD);

	switch (search_state) {
	case 0: /* searching */
	case 1: /* first PLH detected */
	default:
		FUNC2(FE_DEBUG, 1, "Status: Unlocked (Searching ..)");
		*status = 0;
		break;

	case 2: /* DVB-S2 mode */
		FUNC2(FE_DEBUG, 1, "Delivery system: DVB-S2");
		reg = FUNC1(state, DSTATUS);
		if (FUNC0(reg, LOCK_DEFINITIF_FIELD)) {
			reg = FUNC1(state, PDELSTATUS1);
			if (FUNC0(reg, PKTDELIN_LOCK_FIELD)) {
				reg = FUNC1(state, TSSTATUS);
				if (FUNC0(reg, TSFIFO_LINEOK_FIELD)) {
					*status = FE_HAS_SIGNAL |
						  FE_HAS_CARRIER |
						  FE_HAS_VITERBI |
						  FE_HAS_SYNC |
						  FE_HAS_LOCK;
				}
			}
		}
		break;

	case 3: /* DVB-S1/legacy mode */
		FUNC2(FE_DEBUG, 1, "Delivery system: DVB-S");
		reg = FUNC1(state, DSTATUS);
		if (FUNC0(reg, LOCK_DEFINITIF_FIELD)) {
			reg = FUNC1(state, VSTATUSVIT);
			if (FUNC0(reg, LOCKEDVIT_FIELD)) {
				reg = FUNC1(state, TSSTATUS);
				if (FUNC0(reg, TSFIFO_LINEOK_FIELD)) {
					*status = FE_HAS_SIGNAL |
						  FE_HAS_CARRIER |
						  FE_HAS_VITERBI |
						  FE_HAS_SYNC |
						  FE_HAS_LOCK;
				}
			}
		}
		break;
	}

	return 0;
}