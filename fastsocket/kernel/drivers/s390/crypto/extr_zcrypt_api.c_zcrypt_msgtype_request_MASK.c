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
struct zcrypt_ops {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 struct zcrypt_ops* FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

struct zcrypt_ops *FUNC3(unsigned char *name, int variant)
{
	struct zcrypt_ops *zops = NULL;

	zops = FUNC0(name, variant);
#ifndef CONFIG_ZCRYPT_MONOLITHIC
	if (!zops) {
		FUNC1(name);
		zops = FUNC0(name, variant);
	}
#endif
	if ((!zops) ||  (!FUNC2(zops->owner)))
		return NULL;
	return zops;
}