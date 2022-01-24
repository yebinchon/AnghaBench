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
struct slip {int mtu; unsigned long buffsize; int /*<<< orphan*/  lock; scalar_t__ xbits; scalar_t__ xdata; int /*<<< orphan*/  slcomp; int /*<<< orphan*/  cbuff; int /*<<< orphan*/  xbuff; int /*<<< orphan*/  rbuff; scalar_t__ xleft; scalar_t__ rcount; int /*<<< orphan*/ * tty; } ;
typedef  char slcompress ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(struct slip *sl, int mtu)
{
	int err = -ENOBUFS;
	unsigned long len;
	char *rbuff = NULL;
	char *xbuff = NULL;
#ifdef SL_INCLUDE_CSLIP
	char *cbuff = NULL;
	struct slcompress *slcomp = NULL;
#endif

	/*
	 * Allocate the SLIP frame buffers:
	 *
	 * rbuff	Receive buffer.
	 * xbuff	Transmit buffer.
	 * cbuff        Temporary compression buffer.
	 */
	len = mtu * 2;

	/*
	 * allow for arrival of larger UDP packets, even if we say not to
	 * also fixes a bug in which SunOS sends 512-byte packets even with
	 * an MSS of 128
	 */
	if (len < 576 * 2)
		len = 576 * 2;
	rbuff = FUNC1(len + 4, GFP_KERNEL);
	if (rbuff == NULL)
		goto err_exit;
	xbuff = FUNC1(len + 4, GFP_KERNEL);
	if (xbuff == NULL)
		goto err_exit;
#ifdef SL_INCLUDE_CSLIP
	cbuff = kmalloc(len + 4, GFP_KERNEL);
	if (cbuff == NULL)
		goto err_exit;
	slcomp = slhc_init(16, 16);
	if (slcomp == NULL)
		goto err_exit;
#endif
	FUNC4(&sl->lock);
	if (sl->tty == NULL) {
		FUNC5(&sl->lock);
		err = -ENODEV;
		goto err_exit;
	}
	sl->mtu	     = mtu;
	sl->buffsize = len;
	sl->rcount   = 0;
	sl->xleft    = 0;
	rbuff = FUNC6(&sl->rbuff, rbuff);
	xbuff = FUNC6(&sl->xbuff, xbuff);
#ifdef SL_INCLUDE_CSLIP
	cbuff = xchg(&sl->cbuff, cbuff);
	slcomp = xchg(&sl->slcomp, slcomp);
#ifdef CONFIG_SLIP_MODE_SLIP6
	sl->xdata    = 0;
	sl->xbits    = 0;
#endif
#endif
	FUNC5(&sl->lock);
	err = 0;

	/* Cleanup */
err_exit:
#ifdef SL_INCLUDE_CSLIP
	kfree(cbuff);
	if (slcomp)
		slhc_free(slcomp);
#endif
	FUNC0(xbuff);
	FUNC0(rbuff);
	return err;
}