#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union hv_synic_event_flags {size_t* flags32; } ;
typedef  size_t u32 ;
struct TYPE_4__ {void** synic_event_page; } ;
struct TYPE_3__ {size_t* recv_int_page; } ;

/* Variables and functions */
 size_t HV_EVENT_FLAGS_DWORD_COUNT ; 
 int MAX_NUM_CHANNELS_SUPPORTED ; 
 scalar_t__ VERSION_WIN7 ; 
 scalar_t__ VERSION_WS2008 ; 
 int VMBUS_MESSAGE_SINT ; 
 TYPE_2__ hv_context ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int,unsigned long*) ; 
 TYPE_1__ vmbus_connection ; 
 scalar_t__ vmbus_proto_version ; 

void FUNC3(unsigned long data)
{
	u32 dword;
	u32 maxdword;
	int bit;
	u32 relid;
	u32 *recv_int_page = NULL;
	void *page_addr;
	int cpu = FUNC1();
	union hv_synic_event_flags *event;

	if ((vmbus_proto_version == VERSION_WS2008) ||
		(vmbus_proto_version == VERSION_WIN7)) {
		maxdword = MAX_NUM_CHANNELS_SUPPORTED >> 5;
		recv_int_page = vmbus_connection.recv_int_page;
	} else {
		/*
		 * When the host is win8 and beyond, the event page
		 * can be directly checked to get the id of the channel
		 * that has the interrupt pending.
		 */
		maxdword = HV_EVENT_FLAGS_DWORD_COUNT;
		page_addr = hv_context.synic_event_page[cpu];
		event = (union hv_synic_event_flags *)page_addr +
						 VMBUS_MESSAGE_SINT;
		recv_int_page = event->flags32;
	}



	/* Check events */
	if (!recv_int_page)
		return;
	for (dword = 0; dword < maxdword; dword++) {
		if (!recv_int_page[dword])
			continue;
		for (bit = 0; bit < 32; bit++) {
			if (FUNC2(bit,
				(unsigned long *)&recv_int_page[dword])) {
				relid = (dword << 5) + bit;

				if (relid == 0)
					/*
					 * Special case - vmbus
					 * channel protocol msg
					 */
					continue;

				FUNC0(relid);
			}
		}
	}
}