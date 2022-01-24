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
struct isac {unsigned char (* read_isac ) (struct isac*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_isac ) (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DBG_IRQ ; 
 int /*<<< orphan*/  DBG_WARN ; 
 int /*<<< orphan*/  ISACSX_CMDRD ; 
 int /*<<< orphan*/  ISACSX_CMDRD_RMC ; 
 int /*<<< orphan*/  ISACSX_ISTAD ; 
 unsigned char ISACSX_ISTAD_RFO ; 
 unsigned char ISACSX_ISTAD_RME ; 
 unsigned char ISACSX_ISTAD_RPF ; 
 unsigned char ISACSX_ISTAD_XDU ; 
 unsigned char ISACSX_ISTAD_XMR ; 
 unsigned char ISACSX_ISTAD_XPR ; 
 int /*<<< orphan*/  FUNC1 (struct isac*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isac*) ; 
 int /*<<< orphan*/  FUNC3 (struct isac*) ; 
 int /*<<< orphan*/  FUNC4 (struct isac*) ; 
 unsigned char FUNC5 (struct isac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct isac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(struct isac *isac)
{
	unsigned char val;

	val = isac->read_isac(isac, ISACSX_ISTAD);
	FUNC0(DBG_IRQ, "ISTAD %#x", val);
	if (val & ISACSX_ISTAD_XDU) {
		FUNC0(DBG_WARN, "ISTAD XDU");
		FUNC2(isac);
	}
	if (val & ISACSX_ISTAD_XMR) {
		FUNC0(DBG_WARN, "ISTAD XMR");
		FUNC2(isac);
	}
	if (val & ISACSX_ISTAD_XPR) {
		FUNC0(DBG_IRQ, "ISTAD XPR");
		FUNC4(isac);
	}
	if (val & ISACSX_ISTAD_RFO) {
		FUNC0(DBG_WARN, "ISTAD RFO");
		isac->write_isac(isac, ISACSX_CMDRD, ISACSX_CMDRD_RMC);
	}
	if (val & ISACSX_ISTAD_RME) {
		FUNC0(DBG_IRQ, "ISTAD RME");
		FUNC3(isac);
	}
	if (val & ISACSX_ISTAD_RPF) {
		FUNC0(DBG_IRQ, "ISTAD RPF");
		FUNC1(isac, 0x20);
	}
}