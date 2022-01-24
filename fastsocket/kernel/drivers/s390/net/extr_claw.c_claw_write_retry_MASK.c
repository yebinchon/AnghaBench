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
struct net_device {int dummy; } ;
struct chbk {scalar_t__ claw_state; struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ CLAW_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC2 ( struct chbk *p_ch )
{

        struct net_device  *dev=p_ch->ndev;

	FUNC0(4, trace, "w_retry");
        if (p_ch->claw_state == CLAW_STOP) {
        	return;
        }
	FUNC1( dev );
	FUNC0(4, trace, "rtry_xit");
        return;
}