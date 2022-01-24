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
typedef  int u32 ;
typedef  int /*<<< orphan*/  index ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int const,int const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int const*,int) ; 

void FUNC3(u32 index, const u8 *addr)
{
	void *devp = FUNC0(NULL, "linux,network-index",
	                                     (void*)&index, sizeof(index));

	if (devp) {
		FUNC1("ENET%d: local-mac-address <-"
		       " %02x:%02x:%02x:%02x:%02x:%02x\n\r", index,
		       addr[0], addr[1], addr[2],
		       addr[3], addr[4], addr[5]);

		FUNC2(devp, "local-mac-address", addr, 6);
	}
}