#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct tty_struct {int dummy; } ;
struct TYPE_5__ {struct tty_struct* tty; } ;
struct TYPE_6__ {int data_rate; int loopback; int /*<<< orphan*/  mode; } ;
struct slgt_info {int tmp_rbuf_count; int tx_count; int /*<<< orphan*/  init_error; TYPE_1__ port; TYPE_2__ params; int /*<<< orphan*/  lock; int /*<<< orphan*/  tmp_rbuf; } ;
typedef  int /*<<< orphan*/  params ;
typedef  TYPE_2__ MGSL_PARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  DiagStatus_DmaFailure ; 
 int ENODEV ; 
 int /*<<< orphan*/  MGSL_MODE_ASYNC ; 
 int TESTFRAMESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct slgt_info*) ; 
 scalar_t__ FUNC1 (struct slgt_info*) ; 
 scalar_t__ FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct slgt_info*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct slgt_info*) ; 

__attribute__((used)) static int FUNC12(struct slgt_info *info)
{
#define TESTFRAMESIZE 20

	unsigned long timeout;
	u16 count = TESTFRAMESIZE;
	unsigned char buf[TESTFRAMESIZE];
	int rc = -ENODEV;
	unsigned long flags;

	struct tty_struct *oldtty = info->port.tty;
	MGSL_PARAMS params;

	FUNC3(&params, &info->params, sizeof(params));

	info->params.mode = MGSL_MODE_ASYNC;
	info->params.data_rate = 921600;
	info->params.loopback = 1;
	info->port.tty = NULL;

	/* build and send transmit frame */
	for (count = 0; count < TESTFRAMESIZE; ++count)
		buf[count] = (unsigned char)count;

	info->tmp_rbuf_count = 0;
	FUNC4(info->tmp_rbuf, 0, TESTFRAMESIZE);

	/* program hardware for HDLC and enabled receiver */
	FUNC8(&info->lock,flags);
	FUNC0(info);
	FUNC7(info);
	info->tx_count = count;
	FUNC10(info, buf, count);
	FUNC11(info);
	FUNC9(&info->lock, flags);

	/* wait for receive complete */
	for (timeout = 100; timeout; --timeout) {
		FUNC5(10);
		if (FUNC1(info)) {
			rc = 0;
			break;
		}
	}

	/* verify received frame length and contents */
	if (!rc && (info->tmp_rbuf_count != count ||
		  FUNC2(buf, info->tmp_rbuf, count))) {
		rc = -ENODEV;
	}

	FUNC8(&info->lock,flags);
	FUNC6(info);
	FUNC9(&info->lock,flags);

	FUNC3(&info->params, &params, sizeof(info->params));
	info->port.tty = oldtty;

	info->init_error = rc ? DiagStatus_DmaFailure : 0;
	return rc;
}