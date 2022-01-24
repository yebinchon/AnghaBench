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
struct bfin_twi_iface {int writeNum; int* transPtr; scalar_t__ cur_mode; int manual_stop; int cur_msg; int msg_num; int readNum; int result; int /*<<< orphan*/  complete; TYPE_1__* pmsg; int /*<<< orphan*/  read_write; } ;
struct TYPE_2__ {int flags; int* buf; int len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 unsigned short ANAK ; 
 unsigned short BUFRDERR ; 
 int EIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int /*<<< orphan*/  I2C_SMBUS_WRITE ; 
 unsigned short MCOMP ; 
 int MDIR ; 
 unsigned short MERR ; 
 unsigned short RCVSERV ; 
 int RSTART ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int STOP ; 
 scalar_t__ TWI_I2C_MODE_COMBINED ; 
 scalar_t__ TWI_I2C_MODE_REPEAT ; 
 scalar_t__ TWI_I2C_MODE_STANDARDSUB ; 
 unsigned short XMTSERV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC2 (struct bfin_twi_iface*) ; 
 int FUNC3 (struct bfin_twi_iface*) ; 
 unsigned short FUNC4 (struct bfin_twi_iface*) ; 
 int FUNC5 (struct bfin_twi_iface*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfin_twi_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bfin_twi_iface*,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct bfin_twi_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bfin_twi_iface*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bfin_twi_iface*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct bfin_twi_iface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct bfin_twi_iface *iface)
{
	unsigned short twi_int_status = FUNC2(iface);
	unsigned short mast_stat = FUNC4(iface);

	if (twi_int_status & XMTSERV) {
		/* Transmit next data */
		if (iface->writeNum > 0) {
			FUNC11(iface, *(iface->transPtr++));
			iface->writeNum--;
		}
		/* start receive immediately after complete sending in
		 * combine mode.
		 */
		else if (iface->cur_mode == TWI_I2C_MODE_COMBINED)
			FUNC9(iface,
				FUNC3(iface) | MDIR | RSTART);
		else if (iface->manual_stop)
			FUNC9(iface,
				FUNC3(iface) | STOP);
		else if (iface->cur_mode == TWI_I2C_MODE_REPEAT &&
		         iface->cur_msg + 1 < iface->msg_num) {
			if (iface->pmsg[iface->cur_msg + 1].flags & I2C_M_RD)
				FUNC9(iface,
					FUNC3(iface) | RSTART | MDIR);
			else
				FUNC9(iface,
					(FUNC3(iface) | RSTART) & ~MDIR);
		}
		FUNC0();
		/* Clear status */
		FUNC7(iface, XMTSERV);
		FUNC0();
	}
	if (twi_int_status & RCVSERV) {
		if (iface->readNum > 0) {
			/* Receive next data */
			*(iface->transPtr) = FUNC5(iface);
			if (iface->cur_mode == TWI_I2C_MODE_COMBINED) {
				/* Change combine mode into sub mode after
				 * read first data.
				 */
				iface->cur_mode = TWI_I2C_MODE_STANDARDSUB;
				/* Get read number from first byte in block
				 * combine mode.
				 */
				if (iface->readNum == 1 && iface->manual_stop)
					iface->readNum = *iface->transPtr + 1;
			}
			iface->transPtr++;
			iface->readNum--;
		} else if (iface->manual_stop) {
			FUNC9(iface,
				FUNC3(iface) | STOP);
			FUNC0();
		} else if (iface->cur_mode == TWI_I2C_MODE_REPEAT &&
		           iface->cur_msg + 1 < iface->msg_num) {
			if (iface->pmsg[iface->cur_msg + 1].flags & I2C_M_RD)
				FUNC9(iface,
					FUNC3(iface) | RSTART | MDIR);
			else
				FUNC9(iface,
					(FUNC3(iface) | RSTART) & ~MDIR);
			FUNC0();
		}
		/* Clear interrupt source */
		FUNC7(iface, RCVSERV);
		FUNC0();
	}
	if (twi_int_status & MERR) {
		FUNC7(iface, MERR);
		FUNC6(iface, 0);
		FUNC10(iface, 0x3e);
		FUNC9(iface, 0);
		FUNC0();
		iface->result = -EIO;
		/* if both err and complete int stats are set, return proper
		 * results.
		 */
		if (twi_int_status & MCOMP) {
			FUNC7(iface, MCOMP);
			FUNC6(iface, 0);
			FUNC9(iface, 0);
			FUNC0();
			/* If it is a quick transfer, only address bug no data,
			 * not an err, return 1.
			 */
			if (iface->writeNum == 0 && (mast_stat & BUFRDERR))
				iface->result = 1;
			/* If address not acknowledged return -1,
			 * else return 0.
			 */
			else if (!(mast_stat & ANAK))
				iface->result = 0;
		}
		FUNC1(&iface->complete);
		return;
	}
	if (twi_int_status & MCOMP) {
		FUNC7(iface, MCOMP);
		FUNC0();
		if (iface->cur_mode == TWI_I2C_MODE_COMBINED) {
			if (iface->readNum == 0) {
				/* set the read number to 1 and ask for manual
				 * stop in block combine mode
				 */
				iface->readNum = 1;
				iface->manual_stop = 1;
				FUNC9(iface,
					FUNC3(iface) | (0xff << 6));
			} else {
				/* set the readd number in other
				 * combine mode.
				 */
				FUNC9(iface,
					(FUNC3(iface) &
					(~(0xff << 6))) |
					(iface->readNum << 6));
			}
			/* remove restart bit and enable master receive */
			FUNC9(iface,
				FUNC3(iface) & ~RSTART);
			FUNC0();
		} else if (iface->cur_mode == TWI_I2C_MODE_REPEAT &&
				iface->cur_msg+1 < iface->msg_num) {
			iface->cur_msg++;
			iface->transPtr = iface->pmsg[iface->cur_msg].buf;
			iface->writeNum = iface->readNum =
				iface->pmsg[iface->cur_msg].len;
			/* Set Transmit device address */
			FUNC8(iface,
				iface->pmsg[iface->cur_msg].addr);
			if (iface->pmsg[iface->cur_msg].flags & I2C_M_RD)
				iface->read_write = I2C_SMBUS_READ;
			else {
				iface->read_write = I2C_SMBUS_WRITE;
				/* Transmit first data */
				if (iface->writeNum > 0) {
					FUNC11(iface,
						*(iface->transPtr++));
					iface->writeNum--;
					FUNC0();
				}
			}

			if (iface->pmsg[iface->cur_msg].len <= 255)
					FUNC9(iface,
					(FUNC3(iface) &
					(~(0xff << 6))) |
				(iface->pmsg[iface->cur_msg].len << 6));
			else {
				FUNC9(iface,
					(FUNC3(iface) |
					(0xff << 6)));
				iface->manual_stop = 1;
			}
			/* remove restart bit and enable master receive */
			FUNC9(iface,
				FUNC3(iface) & ~RSTART);
			FUNC0();
		} else {
			iface->result = 1;
			FUNC6(iface, 0);
			FUNC9(iface, 0);
			FUNC0();
			FUNC1(&iface->complete);
		}
	}
}