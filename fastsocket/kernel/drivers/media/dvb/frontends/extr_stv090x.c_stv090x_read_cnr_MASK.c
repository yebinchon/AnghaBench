#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct stv090x_state {int delsys; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef  int s32 ;
struct TYPE_4__ {int read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DSTATUS ; 
 int /*<<< orphan*/  LOCK_DEFINITIF_FIELD ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  NNOSPLHT0 ; 
 int /*<<< orphan*/  NNOSPLHT1 ; 
 int /*<<< orphan*/  NOSDATAT0 ; 
 int /*<<< orphan*/  NOSDATAT1 ; 
 int /*<<< orphan*/  NOSDATAT_UNNORMED_FIELD ; 
 int /*<<< orphan*/  NOSPLHT_NORMED_FIELD ; 
#define  STV090x_DSS 130 
#define  STV090x_DVBS1 129 
#define  STV090x_DVBS2 128 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* stv090x_s1cn_tab ; 
 TYPE_1__* stv090x_s2cn_tab ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, u16 *cnr)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg_0, reg_1, reg, i;
	s32 val_0, val_1, val = 0;
	u8 lock_f;
	s32 div;
	u32 last;

	switch (state->delsys) {
	case STV090x_DVBS2:
		reg = FUNC3(state, DSTATUS);
		lock_f = FUNC2(reg, LOCK_DEFINITIF_FIELD);
		if (lock_f) {
			FUNC4(5);
			for (i = 0; i < 16; i++) {
				reg_1 = FUNC3(state, NNOSPLHT1);
				val_1 = FUNC2(reg_1, NOSPLHT_NORMED_FIELD);
				reg_0 = FUNC3(state, NNOSPLHT0);
				val_0 = FUNC2(reg_0, NOSPLHT_NORMED_FIELD);
				val  += FUNC1(val_1, val_0);
				FUNC4(1);
			}
			val /= 16;
			last = FUNC0(stv090x_s2cn_tab) - 1;
			div = stv090x_s2cn_tab[0].read -
			      stv090x_s2cn_tab[last].read;
			*cnr = 0xFFFF - ((val * 0xFFFF) / div);
		}
		break;

	case STV090x_DVBS1:
	case STV090x_DSS:
		reg = FUNC3(state, DSTATUS);
		lock_f = FUNC2(reg, LOCK_DEFINITIF_FIELD);
		if (lock_f) {
			FUNC4(5);
			for (i = 0; i < 16; i++) {
				reg_1 = FUNC3(state, NOSDATAT1);
				val_1 = FUNC2(reg_1, NOSDATAT_UNNORMED_FIELD);
				reg_0 = FUNC3(state, NOSDATAT0);
				val_0 = FUNC2(reg_0, NOSDATAT_UNNORMED_FIELD);
				val  += FUNC1(val_1, val_0);
				FUNC4(1);
			}
			val /= 16;
			last = FUNC0(stv090x_s1cn_tab) - 1;
			div = stv090x_s1cn_tab[0].read -
			      stv090x_s1cn_tab[last].read;
			*cnr = 0xFFFF - ((val * 0xFFFF) / div);
		}
		break;
	default:
		break;
	}

	return 0;
}