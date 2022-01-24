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
struct zd1201 {int mac_enabled; scalar_t__ monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZD1201_CMDCODE_ENABLE ; 
 int /*<<< orphan*/  ZD1201_RID_PROMISCUOUSMODE ; 
 int FUNC0 (struct zd1201*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct zd1201*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct zd1201 *zd)
{
	int err;

	if (zd->mac_enabled)
		return 0;

	err = FUNC0(zd, ZD1201_CMDCODE_ENABLE, 0, 0, 0);
	if (!err)
		zd->mac_enabled = 1;

	if (zd->monitor)
		err = FUNC1(zd, ZD1201_RID_PROMISCUOUSMODE, 1);

	return err;
}