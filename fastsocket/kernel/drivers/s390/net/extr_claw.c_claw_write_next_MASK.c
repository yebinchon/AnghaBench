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
struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {scalar_t__ write_free_count; int /*<<< orphan*/ * p_write_active_first; } ;
struct chbk {scalar_t__ claw_state; int /*<<< orphan*/  collect_queue; scalar_t__ ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ CLAW_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sk_buff*,struct net_device*,int) ; 
 struct sk_buff* FUNC3 (struct claw_privbk*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC6 ( struct chbk * p_ch )
{

        struct net_device  *dev;
        struct claw_privbk *privptr=NULL;
	struct sk_buff *pk_skb;
	int	rc;

	FUNC0(4, trace, "claw_wrt");
        if (p_ch->claw_state == CLAW_STOP)
                return;
        dev = (struct net_device *) p_ch->ndev;
	privptr = (struct claw_privbk *) dev->ml_priv;
        FUNC1( dev );
	if ((privptr->write_free_count > 0) &&
	    !FUNC5(&p_ch->collect_queue)) {
	  	pk_skb = FUNC3(privptr);
		while (pk_skb != NULL) {
			rc = FUNC2( pk_skb, dev,1);
			if (privptr->write_free_count > 0) {
	   			pk_skb = FUNC3(privptr);
			} else
				pk_skb = NULL;
		}
	}
        if (privptr->p_write_active_first!=NULL) {
                FUNC4(dev);
        }
        return;
}