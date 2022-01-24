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
struct saa7134_dev {int /*<<< orphan*/  i2c_adap; } ;
struct i2c_msg {int addr; int* buf; int len; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; TYPE_1__* dvb; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_3__ {struct saa7134_dev* priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 
 scalar_t__ FUNC1 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct saa7134_dev *dev = fe->dvb->priv;

	static u8 msg[] = { 0x00, 0x14 };
	struct i2c_msg analog_msg = {.addr = 0x43,.flags = 0,.buf = msg,.len = sizeof(msg) };

	if (FUNC1(fe))
		return -EIO;

	/* switch the board to analog mode */
	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);
	FUNC0(&dev->i2c_adap, &analog_msg, 1);
	return 0;
}