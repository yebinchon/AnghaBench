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
struct microtune_priv {int dummy; } ;
struct dvb_frontend {struct microtune_priv* tuner_priv; } ;
struct analog_parameters {int std; int frequency; } ;

/* Variables and functions */
 int V4L2_STD_525_60 ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
				 struct analog_parameters *params)
{
	struct microtune_priv *priv = fe->tuner_priv;
	int if2;

	if (params->std & V4L2_STD_525_60) {
		FUNC1("pinnacle ntsc\n");
		if2 = 41300 * 1000;
	} else {
		FUNC1("pinnacle pal\n");
		if2 = 33300 * 1000;
	}

	// per Manual for FM tuning: first if center freq. 1085 MHz
	FUNC0(fe, params->frequency * 125 / 2,
			   1085*1000*1000,if2,if2,if2);

	return 0;
}