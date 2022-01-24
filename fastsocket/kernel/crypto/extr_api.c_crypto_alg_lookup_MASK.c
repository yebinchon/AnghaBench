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
typedef  int /*<<< orphan*/  u32 ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 struct crypto_alg* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypto_alg_sem ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct crypto_alg *FUNC3(const char *name, u32 type, u32 mask)
{
	struct crypto_alg *alg;

	FUNC1(&crypto_alg_sem);
	alg = FUNC0(name, type, mask);
	FUNC2(&crypto_alg_sem);

	return alg;
}