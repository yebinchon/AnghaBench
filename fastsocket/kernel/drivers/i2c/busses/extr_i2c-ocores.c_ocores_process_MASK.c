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
struct ocores_i2c {scalar_t__ state; int pos; scalar_t__ nmsgs; struct i2c_msg* msg; int /*<<< orphan*/  wait; } ;
struct i2c_msg {int flags; int* buf; int len; int addr; } ;

/* Variables and functions */
 int I2C_M_NOSTART ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  OCI2C_CMD ; 
 int OCI2C_CMD_IACK ; 
 int OCI2C_CMD_READ_ACK ; 
 int OCI2C_CMD_READ_NACK ; 
 int OCI2C_CMD_START ; 
 int OCI2C_CMD_STOP ; 
 int OCI2C_CMD_WRITE ; 
 int /*<<< orphan*/  OCI2C_DATA ; 
 int /*<<< orphan*/  OCI2C_STATUS ; 
 int OCI2C_STAT_ARBLOST ; 
 int OCI2C_STAT_NACK ; 
 scalar_t__ STATE_DONE ; 
 scalar_t__ STATE_ERROR ; 
 scalar_t__ STATE_READ ; 
 scalar_t__ STATE_START ; 
 scalar_t__ STATE_WRITE ; 
 void* FUNC0 (struct ocores_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocores_i2c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ocores_i2c *i2c)
{
	struct i2c_msg *msg = i2c->msg;
	u8 stat = FUNC0(i2c, OCI2C_STATUS);

	if ((i2c->state == STATE_DONE) || (i2c->state == STATE_ERROR)) {
		/* stop has been sent */
		FUNC1(i2c, OCI2C_CMD, OCI2C_CMD_IACK);
		FUNC2(&i2c->wait);
		return;
	}

	/* error? */
	if (stat & OCI2C_STAT_ARBLOST) {
		i2c->state = STATE_ERROR;
		FUNC1(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
		return;
	}

	if ((i2c->state == STATE_START) || (i2c->state == STATE_WRITE)) {
		i2c->state =
			(msg->flags & I2C_M_RD) ? STATE_READ : STATE_WRITE;

		if (stat & OCI2C_STAT_NACK) {
			i2c->state = STATE_ERROR;
			FUNC1(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
			return;
		}
	} else
		msg->buf[i2c->pos++] = FUNC0(i2c, OCI2C_DATA);

	/* end of msg? */
	if (i2c->pos == msg->len) {
		i2c->nmsgs--;
		i2c->msg++;
		i2c->pos = 0;
		msg = i2c->msg;

		if (i2c->nmsgs) {	/* end? */
			/* send start? */
			if (!(msg->flags & I2C_M_NOSTART)) {
				u8 addr = (msg->addr << 1);

				if (msg->flags & I2C_M_RD)
					addr |= 1;

				i2c->state = STATE_START;

				FUNC1(i2c, OCI2C_DATA, addr);
				FUNC1(i2c, OCI2C_CMD,  OCI2C_CMD_START);
				return;
			} else
				i2c->state = (msg->flags & I2C_M_RD)
					? STATE_READ : STATE_WRITE;
		} else {
			i2c->state = STATE_DONE;
			FUNC1(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
			return;
		}
	}

	if (i2c->state == STATE_READ) {
		FUNC1(i2c, OCI2C_CMD, i2c->pos == (msg->len-1) ?
			  OCI2C_CMD_READ_NACK : OCI2C_CMD_READ_ACK);
	} else {
		FUNC1(i2c, OCI2C_DATA, msg->buf[i2c->pos++]);
		FUNC1(i2c, OCI2C_CMD, OCI2C_CMD_WRITE);
	}
}