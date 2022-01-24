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
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  drv_name ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int FUNC0 (struct crypto_tfm*,char*) ; 
 char* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 

int FUNC3(struct crypto_tfm *tfm)
{
	char drv_name[CRYPTO_MAX_ALG_NAME];

	FUNC2(drv_name, sizeof(drv_name), "__driver-%s",
					FUNC1(tfm));

	return FUNC0(tfm, drv_name);
}