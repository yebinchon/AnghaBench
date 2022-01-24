#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* i2eBordStrPtr ;
struct TYPE_5__ {scalar_t__ i2eValid; scalar_t__ i2eState; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2EE_BADMAGIC ; 
 int /*<<< orphan*/  I2EE_BADSTATE ; 
 int /*<<< orphan*/  I2EE_GOOD ; 
 scalar_t__ I2E_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ II_STATE_RESET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int iiDelayed ; 

__attribute__((used)) static int
FUNC2(i2eBordStrPtr pB)
{
	if (pB->i2eValid != I2E_MAGIC) {
		FUNC0(pB, I2EE_BADMAGIC);
	}
	if (pB->i2eState != II_STATE_RESET) {
		FUNC0(pB, I2EE_BADSTATE);
	}
	FUNC1(pB,2000);       /* Now we wait for two seconds. */
	iiDelayed = 1;          /* Delay has been called: ok to initialize */
	FUNC0(pB, I2EE_GOOD);
}