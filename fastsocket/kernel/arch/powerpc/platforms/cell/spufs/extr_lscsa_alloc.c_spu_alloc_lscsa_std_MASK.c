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
struct spu_state {struct spu_lscsa* lscsa; } ;
struct spu_lscsa {unsigned char* ls; } ;

/* Variables and functions */
 int ENOMEM ; 
 int LS_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spu_lscsa*,int /*<<< orphan*/ ,int) ; 
 struct spu_lscsa* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 

__attribute__((used)) static int FUNC4(struct spu_state *csa)
{
	struct spu_lscsa *lscsa;
	unsigned char *p;

	lscsa = FUNC2(sizeof(struct spu_lscsa));
	if (!lscsa)
		return -ENOMEM;
	FUNC1(lscsa, 0, sizeof(struct spu_lscsa));
	csa->lscsa = lscsa;

	/* Set LS pages reserved to allow for user-space mapping. */
	for (p = lscsa->ls; p < lscsa->ls + LS_SIZE; p += PAGE_SIZE)
		FUNC0(FUNC3(p));

	return 0;
}