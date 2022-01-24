#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct cpm_bd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tbase; int /*<<< orphan*/  rbase; int /*<<< orphan*/  brkcr; int /*<<< orphan*/  brkln; int /*<<< orphan*/  brkec; int /*<<< orphan*/  maxidl; int /*<<< orphan*/  mrblr; int /*<<< orphan*/  tfcr; int /*<<< orphan*/  rfcr; } ;
struct TYPE_5__ {int sc; int len; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPM_CMD_INIT_RX_TX ; 
 TYPE_1__* cbd_addr ; 
 int cbd_offset ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* param ; 
 TYPE_1__* rbdf ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* tbdf ; 

__attribute__((used)) static int FUNC6(void)
{
	FUNC0();

	FUNC3(&param->rfcr, 0x10);
	FUNC3(&param->tfcr, 0x10);
	FUNC4(&param->mrblr, 1);
	FUNC4(&param->maxidl, 0);
	FUNC4(&param->brkec, 0);
	FUNC4(&param->brkln, 0);
	FUNC4(&param->brkcr, 0);

	rbdf = cbd_addr;
	rbdf->addr = (u8 *)rbdf - 1;
	rbdf->sc = 0xa000;
	rbdf->len = 1;

	tbdf = rbdf + 1;
	tbdf->addr = (u8 *)rbdf - 2;
	tbdf->sc = 0x2000;
	tbdf->len = 1;

	FUNC5();
	FUNC4(&param->rbase, cbd_offset);
	FUNC4(&param->tbase, cbd_offset + sizeof(struct cpm_bd));

	FUNC1(CPM_CMD_INIT_RX_TX);

	FUNC2();
	return 0;
}