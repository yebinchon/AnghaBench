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
struct rotary_encoder_platform_data {int inverted_a; int inverted_b; unsigned int steps; int /*<<< orphan*/  axis; int /*<<< orphan*/  rollover; int /*<<< orphan*/  relative_axis; int /*<<< orphan*/  gpio_b; int /*<<< orphan*/  gpio_a; } ;
struct rotary_encoder {int armed; int dir; unsigned int pos; int /*<<< orphan*/  input; struct rotary_encoder_platform_data* pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct rotary_encoder *encoder = dev_id;
	struct rotary_encoder_platform_data *pdata = encoder->pdata;
	int a = !!FUNC0(pdata->gpio_a);
	int b = !!FUNC0(pdata->gpio_b);
	int state;

	a ^= pdata->inverted_a;
	b ^= pdata->inverted_b;
	state = (a << 1) | b;

	switch (state) {

	case 0x0:
		if (!encoder->armed)
			break;

		if (pdata->relative_axis) {
			FUNC2(encoder->input, pdata->axis,
					 encoder->dir ? -1 : 1);
		} else {
			unsigned int pos = encoder->pos;

			if (encoder->dir) {
				/* turning counter-clockwise */
				if (pdata->rollover)
					pos += pdata->steps;
				if (pos)
					pos--;
			} else {
				/* turning clockwise */
				if (pdata->rollover || pos < pdata->steps)
					pos++;
			}
			if (pdata->rollover)
				pos %= pdata->steps;
			encoder->pos = pos;
			FUNC1(encoder->input, pdata->axis,
					 encoder->pos);
		}
		FUNC3(encoder->input);

		encoder->armed = false;
		break;

	case 0x1:
	case 0x2:
		if (encoder->armed)
			encoder->dir = state - 1;
		break;

	case 0x3:
		encoder->armed = true;
		break;
	}

	return IRQ_HANDLED;
}