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
struct config_param {int max_mc_addr; } ;
struct s2io_nic {struct config_param config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  ERR_DBG ; 
 scalar_t__ FAILURE ; 
 scalar_t__ S2IO_DISABLE_MAC_ENTRY ; 
 int SUCCESS ; 
 scalar_t__ FUNC1 (struct s2io_nic*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct s2io_nic*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct s2io_nic*) ; 

__attribute__((used)) static int FUNC4(struct s2io_nic *sp, u64 addr)
{
	int offset;
	u64 dis_addr = S2IO_DISABLE_MAC_ENTRY, tmp64;
	struct config_param *config = &sp->config;

	for (offset = 1;
	     offset < config->max_mc_addr; offset++) {
		tmp64 = FUNC2(sp, offset);
		if (tmp64 == addr) {
			/* disable the entry by writing  0xffffffffffffULL */
			if (FUNC1(sp, dis_addr, offset) ==  FAILURE)
				return FAILURE;
			/* store the new mac list from CAM */
			FUNC3(sp);
			return SUCCESS;
		}
	}
	FUNC0(ERR_DBG, "MAC address 0x%llx not found in CAM\n",
		  (unsigned long long)addr);
	return FAILURE;
}