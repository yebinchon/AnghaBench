#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct tty_struct {int dummy; } ;
struct TYPE_13__ {struct tty_struct* tty; } ;
struct TYPE_12__ {int clock_speed; } ;
struct TYPE_14__ {int tx_count; int tmp_rx_buf_count; TYPE_2__ port; TYPE_1__ params; int /*<<< orphan*/  lock; int /*<<< orphan*/  tmp_rx_buf; int /*<<< orphan*/  init_error; } ;
typedef  TYPE_3__ SLMP_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  DiagStatus_DmaFailure ; 
 int TESTFRAMESIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static bool FUNC12(SLMP_INFO *info)
{
#define TESTFRAMESIZE 20

	unsigned long timeout;
	u16 count = TESTFRAMESIZE;
	unsigned char buf[TESTFRAMESIZE];
	bool rc = false;
	unsigned long flags;

	struct tty_struct *oldtty = info->port.tty;
	u32 speed = info->params.clock_speed;

	info->params.clock_speed = 3686400;
	info->port.tty = NULL;

	/* assume failure */
	info->init_error = DiagStatus_DmaFailure;

	/* build and send transmit frame */
	for (count = 0; count < TESTFRAMESIZE;++count)
		buf[count] = (unsigned char)count;

	FUNC3(info->tmp_rx_buf,0,TESTFRAMESIZE);

	/* program hardware for HDLC and enabled receiver */
	FUNC8(&info->lock,flags);
	FUNC1(info);
	FUNC0(info,1);
       	FUNC7(info);
	info->tx_count = count;
	FUNC10(info,buf,count);
	FUNC11(info);
	FUNC9(&info->lock,flags);

	/* wait for receive complete */
	/* Set a timeout for waiting for interrupt. */
	for ( timeout = 100; timeout; --timeout ) {
		FUNC4(10);

		if (FUNC6(info)) {
			rc = true;
			break;
		}
	}

	/* verify received frame length and contents */
	if (rc &&
	    ( info->tmp_rx_buf_count != count ||
	      FUNC2(buf, info->tmp_rx_buf,count))) {
		rc = false;
	}

	FUNC8(&info->lock,flags);
	FUNC5(info);
	FUNC9(&info->lock,flags);

	info->params.clock_speed = speed;
	info->port.tty = oldtty;

	return rc;
}