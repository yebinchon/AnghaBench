#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;
struct TYPE_14__ {int balloon; int hot_add; int hot_add_alignment; } ;
struct TYPE_15__ {TYPE_5__ cap_bits; } ;
struct TYPE_13__ {int size; void* trans_id; int /*<<< orphan*/  type; } ;
struct TYPE_12__ {int /*<<< orphan*/  version; } ;
struct dm_version_request {int max_page_number; scalar_t__ min_page_cnt; TYPE_6__ caps; TYPE_4__ hdr; scalar_t__ is_last_attempt; TYPE_3__ version; } ;
struct dm_capabilities {int max_page_number; scalar_t__ min_page_cnt; TYPE_6__ caps; TYPE_4__ hdr; scalar_t__ is_last_attempt; TYPE_3__ version; } ;
struct TYPE_11__ {int /*<<< orphan*/  wrk; } ;
struct TYPE_10__ {int /*<<< orphan*/  wrk; } ;
struct TYPE_16__ {scalar_t__ state; int host_specified_ha_region; int /*<<< orphan*/  thread; int /*<<< orphan*/  host_event; TYPE_2__ ha_wrk; TYPE_1__ balloon_wrk; int /*<<< orphan*/  ha_region_list; int /*<<< orphan*/  config_event; int /*<<< orphan*/  next_version; struct hv_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CAPABILITIES_REPORT ; 
 scalar_t__ DM_INITIALIZED ; 
 scalar_t__ DM_INITIALIZING ; 
 scalar_t__ DM_INIT_ERROR ; 
 int /*<<< orphan*/  DM_VERSION_REQUEST ; 
 int /*<<< orphan*/  DYNMEM_PROTOCOL_VERSION_WIN7 ; 
 int /*<<< orphan*/  DYNMEM_PROTOCOL_VERSION_WIN8 ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  balloon_onchannelcallback ; 
 int /*<<< orphan*/  balloon_up ; 
 TYPE_7__ dm_device ; 
 int /*<<< orphan*/  dm_ring_size ; 
 int /*<<< orphan*/  dm_thread_func ; 
 int /*<<< orphan*/  do_hot_add ; 
 int /*<<< orphan*/  hot_add ; 
 int /*<<< orphan*/  hot_add_req ; 
 int /*<<< orphan*/  hv_online_page ; 
 int /*<<< orphan*/  FUNC5 (struct hv_device*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_version_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_buffer ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trans_id ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hv_device*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct dm_version_request*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC18(struct hv_device *dev,
			const struct hv_vmbus_device_id *dev_id)
{
	int ret, t;
	struct dm_version_request version_req;
	struct dm_capabilities cap_msg;

	do_hot_add = hot_add;

	/*
	 * First allocate a send buffer.
	 */

	send_buffer = FUNC8(PAGE_SIZE, GFP_KERNEL);
	if (!send_buffer)
		return -ENOMEM;

	ret = FUNC15(dev->channel, dm_ring_size, dm_ring_size, NULL, 0,
			balloon_onchannelcallback, dev);

	if (ret) {
		goto probe_error0;
		return ret;
	}

	dm_device.dev = dev;
	dm_device.state = DM_INITIALIZING;
	dm_device.next_version = DYNMEM_PROTOCOL_VERSION_WIN7;
	FUNC6(&dm_device.host_event);
	FUNC6(&dm_device.config_event);
	FUNC0(&dm_device.ha_region_list);
	FUNC1(&dm_device.balloon_wrk.wrk, balloon_up);
	FUNC1(&dm_device.ha_wrk.wrk, hot_add_req);
	dm_device.host_specified_ha_region = false;

	dm_device.thread =
		 FUNC9(dm_thread_func, &dm_device, "hv_balloon");
	if (FUNC2(dm_device.thread)) {
		ret = FUNC3(dm_device.thread);
		goto probe_error1;
	}

#ifdef CONFIG_MEMORY_HOTPLUG
	set_online_page_callback(&hv_online_page);
#endif

	FUNC5(dev, &dm_device);
	/*
	 * Initiate the hand shake with the host and negotiate
	 * a version that the host can support. We start with the
	 * highest version number and go down if the host cannot
	 * support it.
	 */
	FUNC11(&version_req, 0, sizeof(struct dm_version_request));
	version_req.hdr.type = DM_VERSION_REQUEST;
	version_req.hdr.size = sizeof(struct dm_version_request);
	version_req.hdr.trans_id = FUNC4(&trans_id);
	version_req.version.version = DYNMEM_PROTOCOL_VERSION_WIN8;
	version_req.is_last_attempt = 0;

	ret = FUNC16(dev->channel, &version_req,
				sizeof(struct dm_version_request),
				(unsigned long)NULL,
				VM_PKT_DATA_INBAND, 0);
	if (ret)
		goto probe_error2;

	t = FUNC17(&dm_device.host_event, 5*HZ);
	if (t == 0) {
		ret = -ETIMEDOUT;
		goto probe_error2;
	}

	/*
	 * If we could not negotiate a compatible version with the host
	 * fail the probe function.
	 */
	if (dm_device.state == DM_INIT_ERROR) {
		ret = -ETIMEDOUT;
		goto probe_error2;
	}
	/*
	 * Now submit our capabilities to the host.
	 */
	FUNC11(&cap_msg, 0, sizeof(struct dm_capabilities));
	cap_msg.hdr.type = DM_CAPABILITIES_REPORT;
	cap_msg.hdr.size = sizeof(struct dm_capabilities);
	cap_msg.hdr.trans_id = FUNC4(&trans_id);

	cap_msg.caps.cap_bits.balloon = 1;
	cap_msg.caps.cap_bits.hot_add = 1;

	/*
	 * Specify our alignment requirements as it relates
	 * memory hot-add. Specify 128MB alignment.
	 */
	cap_msg.caps.cap_bits.hot_add_alignment = 7;

	/*
	 * Currently the host does not use these
	 * values and we set them to what is done in the
	 * Windows driver.
	 */
	cap_msg.min_page_cnt = 0;
	cap_msg.max_page_number = -1;

	ret = FUNC16(dev->channel, &cap_msg,
				sizeof(struct dm_capabilities),
				(unsigned long)NULL,
				VM_PKT_DATA_INBAND, 0);
	if (ret)
		goto probe_error2;

	t = FUNC17(&dm_device.host_event, 5*HZ);
	if (t == 0) {
		ret = -ETIMEDOUT;
		goto probe_error2;
	}

	/*
	 * If the host does not like our capabilities,
	 * fail the probe function.
	 */
	if (dm_device.state == DM_INIT_ERROR) {
		ret = -ETIMEDOUT;
		goto probe_error2;
	}

	dm_device.state = DM_INITIALIZED;

	return 0;

probe_error2:
#ifdef CONFIG_MEMORY_HOTPLUG
	restore_online_page_callback(&hv_online_page);
#endif
	FUNC10(dm_device.thread);

probe_error1:
	FUNC14(dev->channel);
probe_error0:
	FUNC7(send_buffer);
	return ret;
}