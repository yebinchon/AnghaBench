#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct zfcp_adapter {TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC2(struct zfcp_adapter *adapter, u32 table)
{
	u16 subtable = table >> 16;
	u16 rule = table & 0xffff;
	const char *act_type[] = { "unknown", "OS", "WWPN", "DID", "LUN" };

	if (subtable && subtable < FUNC0(act_type))
		FUNC1(&adapter->ccw_device->dev,
			 "Access denied according to ACT rule type %s, "
			 "rule %d\n", act_type[subtable], rule);
}