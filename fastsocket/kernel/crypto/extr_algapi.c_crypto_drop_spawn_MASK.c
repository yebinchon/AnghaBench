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
struct crypto_spawn {int /*<<< orphan*/  list; int /*<<< orphan*/  alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  crypto_alg_sem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct crypto_spawn *spawn)
{
	if (!spawn->alg)
		return;

	FUNC0(&crypto_alg_sem);
	FUNC1(&spawn->list);
	FUNC2(&crypto_alg_sem);
}