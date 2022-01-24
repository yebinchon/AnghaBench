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
struct carm_msg_get_fw_ver {void* data_addr; void* handle; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; } ;
struct carm_host {int dummy; } ;
struct carm_fw_ver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARM_MSG_MISC ; 
 int /*<<< orphan*/  MISC_GET_FW_VER ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct carm_host*,unsigned int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct carm_msg_get_fw_ver*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC4(struct carm_host *host,
					 unsigned int idx, void *mem)
{
	struct carm_msg_get_fw_ver *ioc = mem;
	u32 msg_data = (u32) (FUNC1(host, idx) + sizeof(*ioc));

	FUNC3(ioc, 0, sizeof(*ioc));
	ioc->type	= CARM_MSG_MISC;
	ioc->subtype	= MISC_GET_FW_VER;
	ioc->handle	= FUNC2(FUNC0(idx));
	ioc->data_addr	= FUNC2(msg_data);

	return sizeof(struct carm_msg_get_fw_ver) +
	       sizeof(struct carm_fw_ver);
}