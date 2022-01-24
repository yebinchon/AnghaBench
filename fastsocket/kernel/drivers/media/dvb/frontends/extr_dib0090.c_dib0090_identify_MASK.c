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
typedef  int u16 ;
struct dvb_frontend {int id; struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct dib0090_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static u16 FUNC3(struct dvb_frontend *fe)
{
	struct dib0090_state *state = fe->tuner_priv;
	u16 v;

	v = FUNC1(state, 0x1a);

#ifdef FIRMWARE_FIREFLY
	/* pll is not locked locked */
	if (!(v & 0x800))
		dprintk("FE%d : Identification : pll is not yet locked", fe->id);
#endif

	/* without PLL lock info */
	v &= 0x3ff;
	FUNC2("P/V: %04x:", v);

	if ((v >> 8) & 0xf)
		FUNC2("FE%d : Product ID = 0x%x : KROSUS", fe->id, (v >> 8) & 0xf);
	else
		return 0xff;

	v &= 0xff;
	if (((v >> 5) & 0x7) == 0x1)
		FUNC2("FE%d : MP001 : 9090/8096", fe->id);
	else if (((v >> 5) & 0x7) == 0x4)
		FUNC2("FE%d : MP005 : Single Sband", fe->id);
	else if (((v >> 5) & 0x7) == 0x6)
		FUNC2("FE%d : MP008 : diversity VHF-UHF-LBAND", fe->id);
	else if (((v >> 5) & 0x7) == 0x7)
		FUNC2("FE%d : MP009 : diversity 29098 CBAND-UHF-LBAND-SBAND", fe->id);
	else
		return 0xff;

	/* revision only */
	if ((v & 0x1f) == 0x3)
		FUNC2("FE%d : P1-D/E/F detected", fe->id);
	else if ((v & 0x1f) == 0x1)
		FUNC2("FE%d : P1C detected", fe->id);
	else if ((v & 0x1f) == 0x0) {
#ifdef CONFIG_TUNER_DIB0090_P1B_SUPPORT
		dprintk("FE%d : P1-A/B detected: using previous driver - support will be removed soon", fe->id);
		dib0090_p1b_register(fe);
#else
		FUNC2("FE%d : P1-A/B detected: driver is deactivated - not available", fe->id);
		return 0xff;
#endif
	}

	return v;
}