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
struct sh_mobile_i2c_data {int pos; TYPE_1__* msg; } ;
struct TYPE_2__ {int len; unsigned char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_RX ; 
 int /*<<< orphan*/  OP_RX_STOP ; 
 int /*<<< orphan*/  OP_RX_STOP_DATA ; 
 int /*<<< orphan*/  OP_TX ; 
 int /*<<< orphan*/  OP_TX_FIRST ; 
 int /*<<< orphan*/  OP_TX_TO_RX ; 
 unsigned char FUNC0 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*,unsigned char*) ; 
 scalar_t__ FUNC2 (struct sh_mobile_i2c_data*) ; 

__attribute__((used)) static int FUNC3(struct sh_mobile_i2c_data *pd)
{
	unsigned char data;
	int real_pos;

	do {
		if (pd->pos <= -1) {
			FUNC1(pd, &data);

			if (FUNC2(pd))
				FUNC0(pd, OP_TX_FIRST, data);
			else
				FUNC0(pd, OP_TX, data);
			break;
		}

		if (pd->pos == 0) {
			FUNC0(pd, OP_TX_TO_RX, 0);
			break;
		}

		real_pos = pd->pos - 2;

		if (pd->pos == pd->msg->len) {
			if (real_pos < 0) {
				FUNC0(pd, OP_RX_STOP, 0);
				break;
			}
			data = FUNC0(pd, OP_RX_STOP_DATA, 0);
		} else
			data = FUNC0(pd, OP_RX, 0);

		if (real_pos >= 0)
			pd->msg->buf[real_pos] = data;
	} while (0);

	pd->pos++;
	return pd->pos == (pd->msg->len + 2);
}