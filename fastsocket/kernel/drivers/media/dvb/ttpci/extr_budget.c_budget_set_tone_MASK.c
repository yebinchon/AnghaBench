#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dvb_frontend {TYPE_1__* dvb; } ;
struct budget {int dummy; } ;
typedef  int fe_sec_tone_mode_t ;
struct TYPE_2__ {scalar_t__ priv; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SEC_TONE_OFF 129 
#define  SEC_TONE_ON 128 
 int /*<<< orphan*/  FUNC0 (struct budget*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
	struct budget* budget = (struct budget*) fe->dvb->priv;

	switch (tone) {
	case SEC_TONE_ON:
		FUNC0 (budget, 1);
		break;

	case SEC_TONE_OFF:
		FUNC0 (budget, 0);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}