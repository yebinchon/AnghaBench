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
struct isac {unsigned char (* read_isac ) (struct isac*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char) ; 
 int /*<<< orphan*/  DBG_IRQ ; 
 int /*<<< orphan*/  ISACSX_ISTA ; 
 unsigned char ISACSX_ISTA_CIC ; 
 unsigned char ISACSX_ISTA_ICD ; 
 int /*<<< orphan*/  FUNC1 (struct isac*) ; 
 int /*<<< orphan*/  FUNC2 (struct isac*) ; 
 unsigned char FUNC3 (struct isac*,int /*<<< orphan*/ ) ; 

void FUNC4(struct isac *isac)
{
	unsigned char val;

	val = isac->read_isac(isac, ISACSX_ISTA);
	FUNC0(DBG_IRQ, "ISTA %#x", val);

	if (val & ISACSX_ISTA_ICD)
		FUNC2(isac);
	if (val & ISACSX_ISTA_CIC)
		FUNC1(isac);
}