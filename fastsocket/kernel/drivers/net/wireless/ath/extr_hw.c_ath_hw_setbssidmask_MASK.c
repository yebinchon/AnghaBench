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
typedef  int u32 ;
struct ath_common {scalar_t__ bssidmask; scalar_t__ macaddr; void* ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_BSSMSKL ; 
 int /*<<< orphan*/  AR_BSSMSKU ; 
 int /*<<< orphan*/  AR_STA_ID0 ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int AR_STA_ID1_SADH_MASK ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

void FUNC4(struct ath_common *common)
{
	void *ah = common->ah;
	u32 id1;

	FUNC1(ah, AR_STA_ID0, FUNC3(common->macaddr));
	id1 = FUNC0(ah, AR_STA_ID1) & ~AR_STA_ID1_SADH_MASK;
	id1 |= FUNC2(common->macaddr + 4);
	FUNC1(ah, AR_STA_ID1, id1);

	FUNC1(ah, AR_BSSMSKL, FUNC3(common->bssidmask));
	FUNC1(ah, AR_BSSMSKU, FUNC2(common->bssidmask + 4));
}