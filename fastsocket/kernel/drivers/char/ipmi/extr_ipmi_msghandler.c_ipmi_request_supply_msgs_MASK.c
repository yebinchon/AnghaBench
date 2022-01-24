#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_recv_msg {int dummy; } ;
struct ipmi_addr {int dummy; } ;
typedef  TYPE_1__* ipmi_user_t ;
struct TYPE_4__ {int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ipmi_addr*,unsigned char*,unsigned char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct ipmi_addr*,long,struct kernel_ipmi_msg*,void*,void*,struct ipmi_recv_msg*,int,unsigned char,unsigned char,int,int /*<<< orphan*/ ) ; 

int FUNC2(ipmi_user_t          user,
			     struct ipmi_addr     *addr,
			     long                 msgid,
			     struct kernel_ipmi_msg *msg,
			     void                 *user_msg_data,
			     void                 *supplied_smi,
			     struct ipmi_recv_msg *supplied_recv,
			     int                  priority)
{
	unsigned char saddr, lun;
	int           rv;

	if (!user)
		return -EINVAL;
	rv = FUNC0(user->intf, addr, &saddr, &lun);
	if (rv)
		return rv;
	return FUNC1(user,
			      user->intf,
			      addr,
			      msgid,
			      msg,
			      user_msg_data,
			      supplied_smi,
			      supplied_recv,
			      priority,
			      saddr,
			      lun,
			      -1, 0);
}