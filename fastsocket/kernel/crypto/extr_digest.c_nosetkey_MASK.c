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
struct crypto_hash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_MASK ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_hash*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct crypto_hash *tfm, const u8 *key, unsigned int keylen)
{
	FUNC0(tfm, CRYPTO_TFM_RES_MASK);
	return -ENOSYS;
}