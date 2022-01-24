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
struct spu_state {TYPE_1__* lscsa; } ;
struct TYPE_2__ {unsigned char* ls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LS_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 

__attribute__((used)) static void FUNC3(struct spu_state *csa)
{
	/* Clear reserved bit before vfree. */
	unsigned char *p;

	if (csa->lscsa == NULL)
		return;

	for (p = csa->lscsa->ls; p < csa->lscsa->ls + LS_SIZE; p += PAGE_SIZE)
		FUNC0(FUNC2(p));

	FUNC1(csa->lscsa);
}