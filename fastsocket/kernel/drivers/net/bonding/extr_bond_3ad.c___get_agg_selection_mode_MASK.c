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
typedef  int /*<<< orphan*/  u32 ;
struct port {int dummy; } ;
struct bonding {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  agg_select_mode; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (struct bonding*) ; 
 int /*<<< orphan*/  BOND_AD_STABLE ; 
 struct bonding* FUNC1 (struct port*) ; 

__attribute__((used)) static inline u32 FUNC2(struct port *port)
{
	struct bonding *bond = FUNC1(port);

	if (bond == NULL) {
		return BOND_AD_STABLE;
	}

	return FUNC0(bond).agg_select_mode;
}