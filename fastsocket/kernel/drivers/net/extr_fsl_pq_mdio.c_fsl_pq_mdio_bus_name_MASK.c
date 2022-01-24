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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct device_node {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 scalar_t__ OF_BAD_ADDR ; 
 int /*<<< orphan*/ * FUNC0 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device_node*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,unsigned long long) ; 

void FUNC3(char *name, struct device_node *np)
{
	const u32 *addr;
	u64 taddr = OF_BAD_ADDR;

	addr = FUNC0(np, 0, NULL, NULL);
	if (addr)
		taddr = FUNC1(np, addr);

	FUNC2(name, MII_BUS_ID_SIZE, "%s@%llx", np->name,
		(unsigned long long)taddr);
}