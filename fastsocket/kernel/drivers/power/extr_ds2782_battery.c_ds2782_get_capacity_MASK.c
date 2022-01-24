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
typedef  int u8 ;
struct ds2782_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2782_REG_RARC ; 
 int FUNC0 (struct ds2782_info*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct ds2782_info *info, int *capacity)
{
	int err;
	u8 raw;

	err = FUNC0(info, DS2782_REG_RARC, &raw);
	if (err)
		return err;
	*capacity = raw;
	return raw;
}