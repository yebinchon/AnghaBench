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
typedef  int ulong ;
typedef  int u32 ;
struct smsc911x_data {scalar_t__* loopback_rx_pkt; scalar_t__* loopback_tx_pkt; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HW ; 
 unsigned int MIN_PACKET_SIZE ; 
 unsigned int RX_STS_ES_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned int TX_CMD_A_FIRST_SEG_ ; 
 unsigned int TX_CMD_A_LAST_SEG_ ; 
 int /*<<< orphan*/  TX_DATA_FIFO ; 
 unsigned int TX_STS_ES_ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc911x_data*,unsigned int*,int) ; 
 unsigned int FUNC6 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct smsc911x_data*,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct smsc911x_data *pdata)
{
	unsigned int tries;
	u32 wrsz;
	u32 rdsz;
	ulong bufp;

	for (tries = 0; tries < 10; tries++) {
		unsigned int txcmd_a;
		unsigned int txcmd_b;
		unsigned int status;
		unsigned int pktlength;
		unsigned int i;

		/* Zero-out rx packet memory */
		FUNC2(pdata->loopback_rx_pkt, 0, MIN_PACKET_SIZE);

		/* Write tx packet to 118 */
		txcmd_a = (u32)((ulong)pdata->loopback_tx_pkt & 0x03) << 16;
		txcmd_a |= TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;
		txcmd_a |= MIN_PACKET_SIZE;

		txcmd_b = MIN_PACKET_SIZE << 16 | MIN_PACKET_SIZE;

		FUNC3(pdata, TX_DATA_FIFO, txcmd_a);
		FUNC3(pdata, TX_DATA_FIFO, txcmd_b);

		bufp = (ulong)pdata->loopback_tx_pkt & (~0x3);
		wrsz = MIN_PACKET_SIZE + 3;
		wrsz += (u32)((ulong)pdata->loopback_tx_pkt & 0x3);
		wrsz >>= 2;

		FUNC7(pdata, (unsigned int *)bufp, wrsz);

		/* Wait till transmit is done */
		i = 60;
		do {
			FUNC8(5);
			status = FUNC6(pdata);
		} while ((i--) && (!status));

		if (!status) {
			FUNC1(HW, "Failed to transmit "
				"during loopback test");
			continue;
		}
		if (status & TX_STS_ES_) {
			FUNC1(HW, "Transmit encountered "
				"errors during loopback test");
			continue;
		}

		/* Wait till receive is done */
		i = 60;
		do {
			FUNC8(5);
			status = FUNC4(pdata);
		} while ((i--) && (!status));

		if (!status) {
			FUNC1(HW,
				"Failed to receive during loopback test");
			continue;
		}
		if (status & RX_STS_ES_) {
			FUNC1(HW, "Receive encountered "
				"errors during loopback test");
			continue;
		}

		pktlength = ((status & 0x3FFF0000UL) >> 16);
		bufp = (ulong)pdata->loopback_rx_pkt;
		rdsz = pktlength + 3;
		rdsz += (u32)((ulong)pdata->loopback_rx_pkt & 0x3);
		rdsz >>= 2;

		FUNC5(pdata, (unsigned int *)bufp, rdsz);

		if (pktlength != (MIN_PACKET_SIZE + 4)) {
			FUNC1(HW, "Unexpected packet size "
				"during loop back test, size=%d, will retry",
				pktlength);
		} else {
			unsigned int j;
			int mismatch = 0;
			for (j = 0; j < MIN_PACKET_SIZE; j++) {
				if (pdata->loopback_tx_pkt[j]
				    != pdata->loopback_rx_pkt[j]) {
					mismatch = 1;
					break;
				}
			}
			if (!mismatch) {
				FUNC0(HW, "Successfully verified "
					   "loopback packet");
				return 0;
			} else {
				FUNC1(HW, "Data mismatch "
					"during loop back test, will retry");
			}
		}
	}

	return -EIO;
}