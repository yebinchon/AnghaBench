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
typedef  int u16 ;
struct tty_struct {TYPE_1__* termios; struct isi_port* driver_data; } ;
struct TYPE_4__ {int flags; } ;
struct isi_port {int channel; TYPE_2__ port; struct isi_board* card; } ;
struct isi_board {unsigned long base; int shift_count; int port_status; } ;
struct TYPE_3__ {unsigned long c_cflag; } ;

/* Variables and functions */
 int ASYNC_CHECK_CD ; 
 int ASYNC_CTS_FLOW ; 
 int ASYNC_SPD_HI ; 
 int ASYNC_SPD_MASK ; 
 int ASYNC_SPD_SHI ; 
 int ASYNC_SPD_VHI ; 
 int ASYNC_SPD_WARP ; 
 unsigned long CBAUDEX ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 unsigned long FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 int FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (struct tty_struct*) ; 
 int ISICOM_2SB ; 
 int ISICOM_CS5 ; 
 int ISICOM_CS6 ; 
 int ISICOM_CS7 ; 
 int ISICOM_CS8 ; 
 unsigned char ISICOM_CTSRTS ; 
 int ISICOM_EVPAR ; 
 unsigned char ISICOM_INITIATE_XONXOFF ; 
 int ISICOM_ODPAR ; 
 unsigned char ISICOM_RESPOND_XONXOFF ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 
 scalar_t__ FUNC9 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int FUNC11 (struct tty_struct*) ; 
 int FUNC12 (struct tty_struct*) ; 
 scalar_t__ FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (struct isi_port*) ; 
 int* linuxb_to_isib ; 
 int /*<<< orphan*/  FUNC15 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct isi_port*) ; 

__attribute__((used)) static void FUNC17(struct tty_struct *tty)
{
	struct isi_port *port = tty->driver_data;
	struct isi_board *card = port->card;
	unsigned long baud;
	unsigned long base = card->base;
	u16 channel_setup, channel = port->channel,
		shift_count = card->shift_count;
	unsigned char flow_ctrl;

	/* FIXME: Switch to new tty baud API */
	baud = FUNC0(tty);
	if (baud & CBAUDEX) {
		baud &= ~CBAUDEX;

		/*  if CBAUDEX bit is on and the baud is set to either 50 or 75
		 *  then the card is programmed for 57.6Kbps or 115Kbps
		 *  respectively.
		 */

		/* 1,2,3,4 => 57.6, 115.2, 230, 460 kbps resp. */
		if (baud < 1 || baud > 4)
			tty->termios->c_cflag &= ~CBAUDEX;
		else
			baud += 15;
	}
	if (baud == 15) {

		/*  the ASYNC_SPD_HI and ASYNC_SPD_VHI options are set
		 *  by the set_serial_info ioctl ... this is done by
		 *  the 'setserial' utility.
		 */

		if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_HI)
			baud++; /*  57.6 Kbps */
		if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_VHI)
			baud += 2; /*  115  Kbps */
		if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_SHI)
			baud += 3; /* 230 kbps*/
		if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_WARP)
			baud += 4; /* 460 kbps*/
	}
	if (linuxb_to_isib[baud] == -1) {
		/* hang up */
		FUNC14(port);
		return;
	} else
		FUNC16(port);

	if (FUNC13(base) == 0) {
		FUNC15(0x8000 | (channel << shift_count) | 0x03, base);
		FUNC15(linuxb_to_isib[baud] << 8 | 0x03, base);
		channel_setup = 0;
		switch (FUNC4(tty)) {
		case CS5:
			channel_setup |= ISICOM_CS5;
			break;
		case CS6:
			channel_setup |= ISICOM_CS6;
			break;
		case CS7:
			channel_setup |= ISICOM_CS7;
			break;
		case CS8:
			channel_setup |= ISICOM_CS8;
			break;
		}

		if (FUNC5(tty))
			channel_setup |= ISICOM_2SB;
		if (FUNC6(tty)) {
			channel_setup |= ISICOM_EVPAR;
			if (FUNC7(tty))
				channel_setup |= ISICOM_ODPAR;
		}
		FUNC15(channel_setup, base);
		FUNC10(base);
	}
	if (FUNC1(tty))
		port->port.flags &= ~ASYNC_CHECK_CD;
	else
		port->port.flags |= ASYNC_CHECK_CD;

	/* flow control settings ...*/
	flow_ctrl = 0;
	port->port.flags &= ~ASYNC_CTS_FLOW;
	if (FUNC3(tty)) {
		port->port.flags |= ASYNC_CTS_FLOW;
		flow_ctrl |= ISICOM_CTSRTS;
	}
	if (FUNC9(tty))
		flow_ctrl |= ISICOM_RESPOND_XONXOFF;
	if (FUNC8(tty))
		flow_ctrl |= ISICOM_INITIATE_XONXOFF;

	if (FUNC13(base) == 0) {
		FUNC15(0x8000 | (channel << shift_count) | 0x04, base);
		FUNC15(flow_ctrl << 8 | 0x05, base);
		FUNC15((FUNC12(tty)) << 8 | (FUNC11(tty)), base);
		FUNC10(base);
	}

	/*	rx enabled -> enable port for rx on the card	*/
	if (FUNC2(tty)) {
		card->port_status |= (1 << channel);
		FUNC15(card->port_status, base + 0x02);
	}
}