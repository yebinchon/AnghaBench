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
struct cx88_core {int dummy; } ;
struct cx8802_dev {struct cx88_core* core; } ;
typedef  int fe_sec_tone_mode_t ;
struct TYPE_2__ {struct cx8802_dev* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MO_GP0_IO ; 
#define  SEC_TONE_OFF 129 
#define  SEC_TONE_ON 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
	fe_sec_tone_mode_t tone)
{
	struct cx8802_dev *dev = fe->dvb->priv;
	struct cx88_core *core = dev->core;

	FUNC1(MO_GP0_IO, 0x0800);

	switch (tone) {
	case SEC_TONE_ON:
		FUNC1(MO_GP0_IO, 0x08);
		break;
	case SEC_TONE_OFF:
		FUNC0(MO_GP0_IO, 0x08);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}