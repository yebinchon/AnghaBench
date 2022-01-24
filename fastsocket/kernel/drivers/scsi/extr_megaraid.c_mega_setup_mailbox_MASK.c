#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbox_t ;
typedef  int /*<<< orphan*/  mbox64_t ;
struct TYPE_8__ {int una_mbox64_dma; int mbox_dma; int flag; TYPE_1__* host; TYPE_3__* una_mbox64; int /*<<< orphan*/ * mbox; int /*<<< orphan*/ * mbox64; int /*<<< orphan*/  dev; } ;
typedef  TYPE_2__ adapter_t ;
struct TYPE_9__ {int /*<<< orphan*/  mbox; } ;
struct TYPE_7__ {scalar_t__ io_port; } ;

/* Variables and functions */
 int BOARD_IOMAP ; 
 int ENABLE_MBOX_BYTE ; 
 scalar_t__ ENABLE_MBOX_REGION ; 
 scalar_t__ MBOX_PORT0 ; 
 scalar_t__ MBOX_PORT1 ; 
 scalar_t__ MBOX_PORT2 ; 
 scalar_t__ MBOX_PORT3 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int
FUNC4(adapter_t *adapter)
{
	unsigned long	align;

	adapter->una_mbox64 = FUNC3(adapter->dev,
			sizeof(mbox64_t), &adapter->una_mbox64_dma);

	if( !adapter->una_mbox64 ) return -1;
		
	adapter->mbox = &adapter->una_mbox64->mbox;

	adapter->mbox = (mbox_t *)((((unsigned long) adapter->mbox) + 15) &
			(~0UL ^ 0xFUL));

	adapter->mbox64 = (mbox64_t *)(((unsigned long)adapter->mbox) - 8);

	align = ((void *)adapter->mbox) - ((void *)&adapter->una_mbox64->mbox);

	adapter->mbox_dma = adapter->una_mbox64_dma + 8 + align;

	/*
	 * Register the mailbox if the controller is an io-mapped controller
	 */
	if( adapter->flag & BOARD_IOMAP ) {

		FUNC2(adapter->mbox_dma & 0xFF,
				adapter->host->io_port + MBOX_PORT0);

		FUNC2((adapter->mbox_dma >> 8) & 0xFF,
				adapter->host->io_port + MBOX_PORT1);

		FUNC2((adapter->mbox_dma >> 16) & 0xFF,
				adapter->host->io_port + MBOX_PORT2);

		FUNC2((adapter->mbox_dma >> 24) & 0xFF,
				adapter->host->io_port + MBOX_PORT3);

		FUNC2(ENABLE_MBOX_BYTE,
				adapter->host->io_port + ENABLE_MBOX_REGION);

		FUNC0(adapter);

		FUNC1(adapter);
	}

	return 0;
}