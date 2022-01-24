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
struct sh_mobile_i2c_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
typedef  enum sh_mobile_i2c_op { ____Placeholder_sh_mobile_i2c_op } sh_mobile_i2c_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_i2c_data*) ; 
 int ICIC_ALE ; 
 int ICIC_DTEE ; 
 int ICIC_TACKE ; 
 int ICIC_WAITE ; 
#define  OP_RX 135 
#define  OP_RX_STOP 134 
#define  OP_RX_STOP_DATA 133 
#define  OP_START 132 
#define  OP_TX 131 
#define  OP_TX_FIRST 130 
#define  OP_TX_STOP 129 
#define  OP_TX_TO_RX 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned char) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char FUNC8(struct sh_mobile_i2c_data *pd,
			    enum sh_mobile_i2c_op op, unsigned char data)
{
	unsigned char ret = 0;
	unsigned long flags;

	FUNC3(pd->dev, "op %d, data in 0x%02x\n", op, data);

	FUNC6(&pd->lock, flags);

	switch (op) {
	case OP_START: /* issue start and trigger DTE interrupt */
		FUNC5(0x94, FUNC0(pd));
		break;
	case OP_TX_FIRST: /* disable DTE interrupt and write data */
		FUNC5(ICIC_WAITE | ICIC_ALE | ICIC_TACKE, FUNC2(pd));
		FUNC5(data, FUNC1(pd));
		break;
	case OP_TX: /* write data */
		FUNC5(data, FUNC1(pd));
		break;
	case OP_TX_STOP: /* write data and issue a stop afterwards */
		FUNC5(data, FUNC1(pd));
		FUNC5(0x90, FUNC0(pd));
		break;
	case OP_TX_TO_RX: /* select read mode */
		FUNC5(0x81, FUNC0(pd));
		break;
	case OP_RX: /* just read data */
		ret = FUNC4(FUNC1(pd));
		break;
	case OP_RX_STOP: /* enable DTE interrupt, issue stop */
		FUNC5(ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE,
			 FUNC2(pd));
		FUNC5(0xc0, FUNC0(pd));
		break;
	case OP_RX_STOP_DATA: /* enable DTE interrupt, read data, issue stop */
		FUNC5(ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE,
			 FUNC2(pd));
		ret = FUNC4(FUNC1(pd));
		FUNC5(0xc0, FUNC0(pd));
		break;
	}

	FUNC7(&pd->lock, flags);

	FUNC3(pd->dev, "op %d, data out 0x%02x\n", op, ret);
	return ret;
}