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
typedef  unsigned int u8 ;
struct mcp23s08 {unsigned int* cache; } ;

/* Variables and functions */
 size_t MCP_OLAT ; 
 int FUNC0 (struct mcp23s08*,size_t,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct mcp23s08 *mcp, unsigned mask, int value)
{
	u8 olat = mcp->cache[MCP_OLAT];

	if (value)
		olat |= mask;
	else
		olat &= ~mask;
	mcp->cache[MCP_OLAT] = olat;
	return FUNC0(mcp, MCP_OLAT, olat);
}