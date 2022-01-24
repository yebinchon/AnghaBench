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
struct rtattr {int dummy; } ;
struct crypto_instance {int dummy; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int ENAMETOOLONG ; 
 struct crypto_instance* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (struct rtattr*) ; 
 struct crypto_instance* FUNC4 (struct rtattr**,char*,char*,char const*) ; 
 int FUNC5 (char*,int,char*,char const*) ; 

__attribute__((used)) static struct crypto_instance *FUNC6(struct rtattr **tb)
{
	int err;
	const char *cipher_name;
	char ctr_name[CRYPTO_MAX_ALG_NAME];
	char full_name[CRYPTO_MAX_ALG_NAME];

	cipher_name = FUNC3(tb[1]);
	err = FUNC2(cipher_name);
	if (FUNC1(cipher_name))
		return FUNC0(err);

	if (FUNC5(ctr_name, CRYPTO_MAX_ALG_NAME, "ctr(%s)",
		     cipher_name) >= CRYPTO_MAX_ALG_NAME)
		return FUNC0(-ENAMETOOLONG);

	if (FUNC5(full_name, CRYPTO_MAX_ALG_NAME, "ccm(%s)", cipher_name) >=
	    CRYPTO_MAX_ALG_NAME)
		return FUNC0(-ENAMETOOLONG);

	return FUNC4(tb, full_name, ctr_name, cipher_name);
}