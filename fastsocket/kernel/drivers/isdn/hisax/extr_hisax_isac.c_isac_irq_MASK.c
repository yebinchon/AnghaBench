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
struct isac {unsigned char (* read_isac ) (struct isac*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_isac ) (struct isac*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DBG_IRQ ; 
 int /*<<< orphan*/  DBG_WARN ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 unsigned char ISAC_ISTA_CISQ ; 
 unsigned char ISAC_ISTA_EXI ; 
 unsigned char ISAC_ISTA_RME ; 
 unsigned char ISAC_ISTA_RPF ; 
 unsigned char ISAC_ISTA_RSC ; 
 unsigned char ISAC_ISTA_SIN ; 
 unsigned char ISAC_ISTA_XPR ; 
 int /*<<< orphan*/  ISAC_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct isac*) ; 
 int /*<<< orphan*/  FUNC2 (struct isac*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct isac*) ; 
 int /*<<< orphan*/  FUNC4 (struct isac*) ; 
 int /*<<< orphan*/  FUNC5 (struct isac*) ; 
 unsigned char FUNC6 (struct isac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct isac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct isac*,int /*<<< orphan*/ ,int) ; 

void FUNC9(struct isac *isac)
{
	unsigned char val;

	val = isac->read_isac(isac, ISAC_ISTA);
	FUNC0(DBG_IRQ, "ISTA %#x", val);

	if (val & ISAC_ISTA_EXI) {
		FUNC0(DBG_IRQ, "EXI");
		FUNC3(isac);
	}
	if (val & ISAC_ISTA_XPR) {
		FUNC0(DBG_IRQ, "XPR");
		FUNC5(isac);
	}
	if (val & ISAC_ISTA_RME) {
		FUNC0(DBG_IRQ, "RME");
		FUNC4(isac);
	}
	if (val & ISAC_ISTA_RPF) {
		FUNC0(DBG_IRQ, "RPF");
		FUNC2(isac, 0x20);
	}
	if (val & ISAC_ISTA_CISQ) {
		FUNC0(DBG_IRQ, "CISQ");
		FUNC1(isac);
	}
	if (val & ISAC_ISTA_RSC) {
		FUNC0(DBG_WARN, "RSC");
	}
	if (val & ISAC_ISTA_SIN) {
		FUNC0(DBG_WARN, "SIN");
	}
	isac->write_isac(isac, ISAC_MASK, 0xff);
	isac->write_isac(isac, ISAC_MASK, 0x00);
}