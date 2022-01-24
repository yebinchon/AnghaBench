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
struct sp8870_state {int dummy; } ;
struct dvb_frontend {struct sp8870_state* demodulator_priv; } ;
typedef  int fe_status_t ;

/* Variables and functions */
 int EIO ; 
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int FUNC0 (struct sp8870_state*,int) ; 

__attribute__((used)) static int FUNC1 (struct dvb_frontend* fe, fe_status_t * fe_status)
{
	struct sp8870_state* state = fe->demodulator_priv;
	int status;
	int signal;

	*fe_status = 0;

	status = FUNC0 (state, 0x0200);
	if (status < 0)
		return -EIO;

	signal = FUNC0 (state, 0x0303);
	if (signal < 0)
		return -EIO;

	if (signal > 0x0F)
		*fe_status |= FE_HAS_SIGNAL;
	if (status & 0x08)
		*fe_status |= FE_HAS_SYNC;
	if (status & 0x04)
		*fe_status |= FE_HAS_LOCK | FE_HAS_CARRIER | FE_HAS_VITERBI;

	return 0;
}