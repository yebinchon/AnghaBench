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
struct net_device {int mtu; } ;
struct mkiss {int mtu; unsigned long buffsize; int flags; int /*<<< orphan*/ * rbuff; int /*<<< orphan*/  buflock; scalar_t__ xleft; scalar_t__ rcount; int /*<<< orphan*/ * xbuff; int /*<<< orphan*/ * tty; } ;

/* Variables and functions */
 int AXF_INUSE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 struct mkiss* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct mkiss *ax = FUNC2(dev);
	unsigned long len;

	if (ax->tty == NULL)
		return -ENODEV;

	/*
	 * Allocate the frame buffers:
	 *
	 * rbuff	Receive buffer.
	 * xbuff	Transmit buffer.
	 */
	len = dev->mtu * 2;

	/*
	 * allow for arrival of larger UDP packets, even if we say not to
	 * also fixes a bug in which SunOS sends 512-byte packets even with
	 * an MSS of 128
	 */
	if (len < 576 * 2)
		len = 576 * 2;

	if ((ax->rbuff = FUNC1(len + 4, GFP_KERNEL)) == NULL)
		goto norbuff;

	if ((ax->xbuff = FUNC1(len + 4, GFP_KERNEL)) == NULL)
		goto noxbuff;

	ax->mtu	     = dev->mtu + 73;
	ax->buffsize = len;
	ax->rcount   = 0;
	ax->xleft    = 0;

	ax->flags   &= (1 << AXF_INUSE);      /* Clear ESCAPE & ERROR flags */

	FUNC3(&ax->buflock);

	return 0;

noxbuff:
	FUNC0(ax->rbuff);

norbuff:
	return -ENOMEM;
}