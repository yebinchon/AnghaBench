#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct airq_t {int dummy; } ;
typedef  int /*<<< orphan*/  dbf_txt ;
typedef  int addr_t ;
struct TYPE_2__ {scalar_t__* byte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ ** airqs ; 
 TYPE_1__* indicators ; 
 int /*<<< orphan*/  FUNC1 (struct airq_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct airq_t* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(void *ind, u8 isc)
{
	struct airq_t *airq;
	char dbf_txt[16];
	int i;

	i = (int) ((addr_t) ind) - ((addr_t) &indicators[isc].byte[0]);
	FUNC2(dbf_txt, sizeof(dbf_txt), "urairq:%d", i);
	FUNC0(4, dbf_txt);
	indicators[isc].byte[i] = 0;
	airq = FUNC4(&airqs[isc][i], NULL);
	/*
	 * Allow interrupts to complete. This will ensure that the airq handle
	 * is no longer referenced by any interrupt handler.
	 */
	FUNC3();
	FUNC1(airq);
}