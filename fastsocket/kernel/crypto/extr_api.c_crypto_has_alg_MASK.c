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
 int /*<<< orphan*/  FUNC0 (struct crypto_alg*) ; 
 struct crypto_alg* FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto_alg*) ; 

int FUNC3(const char *name, u32 type, u32 mask)
{
	int ret = 0;
	struct crypto_alg *alg = FUNC1(name, type, mask);
	
	if (!FUNC0(alg)) {
		FUNC2(alg);
		ret = 1;
	}
	
	return ret;
}