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
struct vmbus_channel_msginfo {int dummy; } ;
struct vmbus_channel_initiate_contact {int dummy; } ;
typedef  int __u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * monitor_pages; int /*<<< orphan*/ * int_page; scalar_t__ work_queue; int /*<<< orphan*/  conn_state; void* send_int_page; int /*<<< orphan*/ * recv_int_page; int /*<<< orphan*/  channel_lock; int /*<<< orphan*/  chn_list; int /*<<< orphan*/  channelmsg_lock; int /*<<< orphan*/  chn_msg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTING ; 
 int /*<<< orphan*/  DISCONNECTED ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int VERSION_CURRENT ; 
 int VERSION_INVAL ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  host_info_eax ; 
 int host_info_ebx ; 
 int /*<<< orphan*/  host_info_ecx ; 
 int host_info_edx ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_channel_msginfo*) ; 
 struct vmbus_channel_msginfo* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vmbus_connection ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct vmbus_channel_msginfo*,int) ; 
 int vmbus_proto_version ; 

int FUNC12(void)
{
	int ret = 0;
	struct vmbus_channel_msginfo *msginfo = NULL;
	__u32 version;

	/* Initialize the vmbus connection */
	vmbus_connection.conn_state = CONNECTING;
	vmbus_connection.work_queue = FUNC2("hv_vmbus_con");
	if (!vmbus_connection.work_queue) {
		ret = -ENOMEM;
		goto cleanup;
	}

	FUNC0(&vmbus_connection.chn_msg_list);
	FUNC9(&vmbus_connection.channelmsg_lock);

	FUNC0(&vmbus_connection.chn_list);
	FUNC9(&vmbus_connection.channel_lock);

	/*
	 * Setup the vmbus event connection for channel interrupt
	 * abstraction stuff
	 */
	vmbus_connection.int_page =
	(void *)FUNC1(GFP_KERNEL|__GFP_ZERO, 0);
	if (vmbus_connection.int_page == NULL) {
		ret = -ENOMEM;
		goto cleanup;
	}

	vmbus_connection.recv_int_page = vmbus_connection.int_page;
	vmbus_connection.send_int_page =
		(void *)((unsigned long)vmbus_connection.int_page +
			(PAGE_SIZE >> 1));

	/*
	 * Setup the monitor notification facility. The 1st page for
	 * parent->child and the 2nd page for child->parent
	 */
	vmbus_connection.monitor_pages =
	(void *)FUNC1((GFP_KERNEL|__GFP_ZERO), 1);
	if (vmbus_connection.monitor_pages == NULL) {
		ret = -ENOMEM;
		goto cleanup;
	}

	msginfo = FUNC6(sizeof(*msginfo) +
			  sizeof(struct vmbus_channel_initiate_contact),
			  GFP_KERNEL);
	if (msginfo == NULL) {
		ret = -ENOMEM;
		goto cleanup;
	}

	/*
	 * Negotiate a compatible VMBUS version number with the
	 * host. We start with the highest number we can support
	 * and work our way down until we negotiate a compatible
	 * version.
	 */

	version = VERSION_CURRENT;

	do {
		ret = FUNC11(msginfo, version);
		if (ret == 0)
			break;

		version = FUNC10(version);
	} while (version != VERSION_INVAL);

	if (version == VERSION_INVAL)
		goto cleanup;

	vmbus_proto_version = version;
	FUNC8("Hyper-V Host Build:%d-%d.%d-%d-%d.%d; Vmbus version:%d.%d\n",
		    host_info_eax, host_info_ebx >> 16,
		    host_info_ebx & 0xFFFF, host_info_ecx,
		    host_info_edx >> 24, host_info_edx & 0xFFFFFF,
		    version >> 16, version & 0xFFFF);

	FUNC5(msginfo);
	return 0;

cleanup:
	FUNC7("Unable to connect to host\n");
	vmbus_connection.conn_state = DISCONNECTED;

	if (vmbus_connection.work_queue)
		FUNC3(vmbus_connection.work_queue);

	if (vmbus_connection.int_page) {
		FUNC4((unsigned long)vmbus_connection.int_page, 0);
		vmbus_connection.int_page = NULL;
	}

	if (vmbus_connection.monitor_pages) {
		FUNC4((unsigned long)vmbus_connection.monitor_pages, 1);
		vmbus_connection.monitor_pages = NULL;
	}

	FUNC5(msginfo);

	return ret;
}