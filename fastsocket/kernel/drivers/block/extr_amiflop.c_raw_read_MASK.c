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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int adkcon; int dsklen; int /*<<< orphan*/ * dskptr; int /*<<< orphan*/  dsksync; } ;
struct TYPE_5__ {TYPE_1__* type; } ;
struct TYPE_4__ {int read_size; } ;

/* Variables and functions */
 int ADK_FAST ; 
 int ADK_MSBSYNC ; 
 int ADK_SETCLR ; 
 int ADK_WORDSYNC ; 
 int DSKLEN_DMAEN ; 
 int /*<<< orphan*/  MFM_SYNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int block_flag ; 
 TYPE_3__ custom ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ raw_buf ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* unit ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wait_fd_block ; 

__attribute__((used)) static void FUNC6(int drive)
{
	drive&=3;
	FUNC3(drive);
	FUNC5(wait_fd_block, !block_flag);
	FUNC2(drive);
	/* setup adkcon bits correctly */
	custom.adkcon = ADK_MSBSYNC;
	custom.adkcon = ADK_SETCLR|ADK_WORDSYNC|ADK_FAST;

	custom.dsksync = MFM_SYNC;

	custom.dsklen = 0;
	custom.dskptr = (u_char *)FUNC0((u_char *)raw_buf);
	custom.dsklen = unit[drive].type->read_size/sizeof(short) | DSKLEN_DMAEN;
	custom.dsklen = unit[drive].type->read_size/sizeof(short) | DSKLEN_DMAEN;

	block_flag = 1;

	FUNC5(wait_fd_block, !block_flag);

	custom.dsklen = 0;
	FUNC1(drive);
	FUNC4();
}