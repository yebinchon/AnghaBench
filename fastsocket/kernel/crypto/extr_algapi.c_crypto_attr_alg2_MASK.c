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
struct rtattr {int dummy; } ;
struct crypto_type {int dummy; } ;
struct crypto_alg {int dummy; } ;

/* Variables and functions */
 struct crypto_alg* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (struct rtattr*) ; 
 struct crypto_alg* FUNC4 (char const*,struct crypto_type const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct crypto_alg *FUNC5(struct rtattr *rta,
				    const struct crypto_type *frontend,
				    u32 type, u32 mask)
{
	const char *name;
	int err;

	name = FUNC3(rta);
	err = FUNC2(name);
	if (FUNC1(name))
		return FUNC0(err);

	return FUNC4(name, frontend, type, mask);
}