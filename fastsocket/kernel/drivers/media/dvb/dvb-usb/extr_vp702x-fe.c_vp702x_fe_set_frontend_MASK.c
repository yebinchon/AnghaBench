#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct vp702x_fe_state {scalar_t__ voltage; int status_check_interval; int /*<<< orphan*/  d; int /*<<< orphan*/  next_status_check; } ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct vp702x_fe_state* demodulator_priv; } ;

/* Variables and functions */
 scalar_t__ SEC_VOLTAGE_18 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int,int*,int,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend* fe,
				  struct dvb_frontend_parameters *fep)
{
	struct vp702x_fe_state *st = fe->demodulator_priv;
	u32 freq = fep->frequency/1000;
	/*CalFrequency*/
/*	u16 frequencyRef[16] = { 2, 4, 8, 16, 32, 64, 128, 256, 24, 5, 10, 20, 40, 80, 160, 320 }; */
	u64 sr;
	u8 cmd[8] = { 0 },ibuf[10];

	cmd[0] = (freq >> 8) & 0x7f;
	cmd[1] =  freq       & 0xff;
	cmd[2] = 1; /* divrate == 4 -> frequencyRef[1] -> 1 here */

	sr = (u64) (fep->u.qpsk.symbol_rate/1000) << 20;
	FUNC1(sr,88000);
	cmd[3] = (sr >> 12) & 0xff;
	cmd[4] = (sr >> 4)  & 0xff;
	cmd[5] = (sr << 4)  & 0xf0;

	FUNC0("setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\n",
			fep->frequency,freq,freq, fep->u.qpsk.symbol_rate,
			(unsigned long) sr, (unsigned long) sr);

/*	if (fep->inversion == INVERSION_ON)
		cmd[6] |= 0x80; */

	if (st->voltage == SEC_VOLTAGE_18)
		cmd[6] |= 0x40;

/*	if (fep->u.qpsk.symbol_rate > 8000000)
		cmd[6] |= 0x20;

	if (fep->frequency < 1531000)
		cmd[6] |= 0x04;

	if (st->tone_mode == SEC_TONE_ON)
		cmd[6] |= 0x01;*/

	cmd[7] = FUNC2(cmd,0,7);

	st->status_check_interval = 250;
	st->next_status_check = jiffies;

	FUNC3(st->d,cmd,8,ibuf,10,100);

	if (ibuf[2] == 0 && ibuf[3] == 0)
		FUNC0("tuning failed.\n");
	else
		FUNC0("tuning succeeded.\n");

	return 0;
}