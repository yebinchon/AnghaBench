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
struct ksign_public_key {int /*<<< orphan*/ * pkey; } ;

/* Variables and functions */
 int DSA_NPKEY ; 
 int /*<<< orphan*/  FUNC0 (struct ksign_public_key*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ksign_public_key *pk)
{
	int i;

	if (pk) {
		for (i = 0; i < DSA_NPKEY; i++)
			FUNC1(pk->pkey[i]);
		FUNC0(pk);
	}
}