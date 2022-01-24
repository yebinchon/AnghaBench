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
struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {int dummy; } ;
struct chbk {int /*<<< orphan*/  flag_a; scalar_t__ ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLAW_BH_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  trace ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3 ( unsigned long data )
{
	struct chbk * p_ch;
        struct net_device  *dev;
        struct claw_privbk *       privptr;

	p_ch = (struct chbk *) data;
        dev = (struct net_device *)p_ch->ndev;
	FUNC0(4, trace, "IRQtask");
	privptr = (struct claw_privbk *)dev->ml_priv;
        FUNC2(dev);
        FUNC1(CLAW_BH_ACTIVE, (void *)&p_ch->flag_a);
	FUNC0(4, trace, "TskletXt");
        return;
}