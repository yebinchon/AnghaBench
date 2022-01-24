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
typedef  int /*<<< orphan*/  u_char ;
struct isac {scalar_t__ rcvidx; int /*<<< orphan*/  (* write_isac ) (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_isac_fifo ) (struct isac*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/ * rcvbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DBG_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DBG_RFIFO ; 
 int /*<<< orphan*/  DBG_WARN ; 
 int /*<<< orphan*/  ISAC_CMDR ; 
 int /*<<< orphan*/  ISAC_CMDR_RMC ; 
 scalar_t__ MAX_DFRAME_LEN_L1 ; 
 int /*<<< orphan*/  FUNC2 (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isac*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct isac *isac, int count)
{
	// this also works for isacsx, since
	// CMDR(D) register works the same
	u_char *ptr;

	FUNC0(DBG_IRQ, "count %d", count);

	if ((isac->rcvidx + count) >= MAX_DFRAME_LEN_L1) {
		FUNC0(DBG_WARN, "overrun %d", isac->rcvidx + count);
		isac->write_isac(isac, ISAC_CMDR, ISAC_CMDR_RMC);
		isac->rcvidx = 0;
		return;
	}
	ptr = isac->rcvbuf + isac->rcvidx;
	isac->rcvidx += count;
	isac->read_isac_fifo(isac, ptr, count);
	isac->write_isac(isac, ISAC_CMDR, ISAC_CMDR_RMC);
	FUNC1(DBG_RFIFO, ptr, count);
}