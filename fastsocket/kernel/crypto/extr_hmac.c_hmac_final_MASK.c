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
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {int flags; struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 char* FUNC0 (struct crypto_shash*) ; 
 int FUNC1 (struct crypto_shash*) ; 
 scalar_t__ FUNC2 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct shash_desc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct shash_desc*,char*) ; 
 int FUNC5 (struct crypto_shash*) ; 
 struct shash_desc* FUNC6 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC7(struct shash_desc *pdesc, u8 *out)
{
	struct crypto_shash *parent = pdesc->tfm;
	int ds = FUNC1(parent);
	int ss = FUNC5(parent);
	char *opad = FUNC0(parent) + ss;
	struct shash_desc *desc = FUNC6(pdesc);

	desc->flags = pdesc->flags & CRYPTO_TFM_REQ_MAY_SLEEP;

	return FUNC2(desc, out) ?:
	       FUNC4(desc, opad) ?:
	       FUNC3(desc, out, ds, out);
}