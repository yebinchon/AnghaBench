#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buf_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf_addr; } ;

/* Variables and functions */
 int RX_BUF_COUNT ; 
 int TX_BUF_COUNT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/ * nds ; 
 int nds_count ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* rx_desc ; 
 TYPE_1__* tx_desc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	int i;

	/* @@@ Flush out pending packets.  */

	for (i = 0; i < nds_count; i++)
		FUNC4(nds[i]);

	FUNC2(1, 0xff);
	FUNC2(0, 0xff);
	FUNC1(0x3);

	for (i = 0; i < TX_BUF_COUNT; i++)
		FUNC0((unsigned long)FUNC3(tx_desc[i].buf_addr));

	for (i = 0; i < RX_BUF_COUNT; i++)
		FUNC0((unsigned long)FUNC3(rx_desc[i].buf_addr));
}