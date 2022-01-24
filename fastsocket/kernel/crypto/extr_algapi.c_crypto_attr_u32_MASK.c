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
struct rtattr {scalar_t__ rta_type; } ;
struct crypto_attr_u32 {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 scalar_t__ CRYPTOA_U32 ; 
 int EINVAL ; 
 int ENOENT ; 
 struct crypto_attr_u32* FUNC0 (struct rtattr*) ; 
 int FUNC1 (struct rtattr*) ; 

int FUNC2(struct rtattr *rta, u32 *num)
{
	struct crypto_attr_u32 *nu32;

	if (!rta)
		return -ENOENT;
	if (FUNC1(rta) < sizeof(*nu32))
		return -EINVAL;
	if (rta->rta_type != CRYPTOA_U32)
		return -EINVAL;

	nu32 = FUNC0(rta);
	*num = nu32->num;

	return 0;
}