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
typedef  int uint ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int BRCMS_TXPWR_DB_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 

int FUNC1(struct brcms_c_info *wlc)
{
	uint qdbm;
	bool override;

	FUNC0(wlc->band->pi, &qdbm, &override);

	/* Return qdbm units */
	return (int)(qdbm / BRCMS_TXPWR_DB_FACTOR);
}