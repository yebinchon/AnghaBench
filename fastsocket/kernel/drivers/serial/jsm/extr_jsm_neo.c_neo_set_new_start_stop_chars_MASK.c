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
struct jsm_channel {int ch_c_cflag; TYPE_1__* ch_neo_uart; int /*<<< orphan*/  ch_stopc; int /*<<< orphan*/  ch_startc; TYPE_2__* ch_bd; } ;
struct TYPE_4__ {int /*<<< orphan*/  pci_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  xoffchar2; int /*<<< orphan*/  xoffchar1; int /*<<< orphan*/  xonchar2; int /*<<< orphan*/  xonchar1; } ;

/* Variables and functions */
 int CRTSCTS ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct jsm_channel *ch)
{

	/* if hardware flow control is set, then skip this whole thing */
	if (ch->ch_c_cflag & CRTSCTS)
		return;

	FUNC0(PARAM, INFO, &ch->ch_bd->pci_dev, "start\n");

	/* Tell UART what start/stop chars it should be looking for */
	FUNC1(ch->ch_startc, &ch->ch_neo_uart->xonchar1);
	FUNC1(0, &ch->ch_neo_uart->xonchar2);

	FUNC1(ch->ch_stopc, &ch->ch_neo_uart->xoffchar1);
	FUNC1(0, &ch->ch_neo_uart->xoffchar2);
}