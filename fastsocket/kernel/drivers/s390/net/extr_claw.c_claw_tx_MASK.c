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
struct sk_buff {int dummy; } ;
struct net_device {struct claw_privbk* ml_priv; } ;
struct claw_privbk {struct chbk* channel; } ;
struct chbk {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,int) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 size_t WRITE ; 
 int FUNC2 (struct sk_buff*,struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *skb, struct net_device *dev)
{
        int             rc;
	struct claw_privbk *privptr = dev->ml_priv;
	unsigned long saveflags;
        struct chbk *p_ch;

	FUNC0(4, trace, "claw_tx");
        p_ch=&privptr->channel[WRITE];
        FUNC4(FUNC3(p_ch->cdev), saveflags);
        rc=FUNC2( skb, dev, 1 );
        FUNC5(FUNC3(p_ch->cdev), saveflags);
	FUNC1(4, trace, "clawtx%d", rc);
	if (rc)
		rc = NETDEV_TX_BUSY;
	else
		rc = NETDEV_TX_OK;
        return rc;
}