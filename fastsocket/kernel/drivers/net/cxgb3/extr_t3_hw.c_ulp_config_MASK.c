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
struct tp_params {unsigned int chan_rx_size; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_ULPRX_TDDP_TAGMASK ; 
 int /*<<< orphan*/  ISCSI ; 
 int /*<<< orphan*/  PBL ; 
 int /*<<< orphan*/  RQ ; 
 int /*<<< orphan*/  STAG ; 
 int /*<<< orphan*/  TDDP ; 
 int /*<<< orphan*/  TPT ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(struct adapter *adap, const struct tp_params *p)
{
	unsigned int m = p->chan_rx_size;

	FUNC1(adap, ISCSI, m, p->chan_rx_size / 8);
	FUNC1(adap, TDDP, m, p->chan_rx_size / 8);
	FUNC2(adap, TPT, m, p->chan_rx_size / 4);
	FUNC1(adap, STAG, m, p->chan_rx_size / 4);
	FUNC1(adap, RQ, m, p->chan_rx_size / 4);
	FUNC2(adap, PBL, m, p->chan_rx_size / 4);
	FUNC1(adap, PBL, m, p->chan_rx_size / 4);
	FUNC0(adap, A_ULPRX_TDDP_TAGMASK, 0xffffffff);
}