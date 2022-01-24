#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_4__ {scalar_t__ i2eValid; int /*<<< orphan*/  i2eData; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2EE_GOOD ; 
 int /*<<< orphan*/  I2EE_INVALID ; 
 scalar_t__ I2E_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC2(i2eBordStrPtr pB, unsigned char *address, int count)
{
	// Rudimentary sanity checking here.
	if (pB->i2eValid != I2E_MAGIC)
		FUNC0(pB, I2EE_INVALID);

	FUNC1(pB->i2eData, address, count);

	FUNC0(pB, I2EE_GOOD);
}