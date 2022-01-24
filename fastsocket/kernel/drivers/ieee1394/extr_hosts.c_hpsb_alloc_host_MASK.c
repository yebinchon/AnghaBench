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
typedef  int /*<<< orphan*/  u8 ;
struct hpsb_host_driver {int dummy; } ;
struct device {int /*<<< orphan*/ * class; struct device* parent; } ;
struct TYPE_3__ {scalar_t__ speed_map; scalar_t__ topology_map; scalar_t__* gen_timestamp; int /*<<< orphan*/  rom; } ;
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct hpsb_host {int timeout_interval; int id; struct device device; struct device host_dev; TYPE_1__ csr; int /*<<< orphan*/ * speed_map; scalar_t__ topology_map; TYPE_2__ timeout; int /*<<< orphan*/  delayed_reset; int /*<<< orphan*/  generation; int /*<<< orphan*/  addr_space; int /*<<< orphan*/  pending_packets; struct hpsb_host_driver* driver; struct hpsb_host* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_BUS_INFO_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  abort_timedouts ; 
 int /*<<< orphan*/  alloc_hostnum_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hpsb_host*) ; 
 int /*<<< orphan*/  csr_bus_ops ; 
 int /*<<< orphan*/  delayed_reset_bus ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 scalar_t__ FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  host_num_alloc ; 
 int /*<<< orphan*/  hpsb_host_class ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (struct hpsb_host*) ; 
 struct hpsb_host* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nodemgr_dev_template_host ; 
 scalar_t__ FUNC15 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,int /*<<< orphan*/ ) ; 

struct hpsb_host *FUNC17(struct hpsb_host_driver *drv, size_t extra,
				  struct device *dev)
{
	struct hpsb_host *h;
	int i;
	int hostnum = 0;

	h = FUNC11(sizeof(*h) + extra, GFP_KERNEL);
	if (!h)
		return NULL;

	h->csr.rom = FUNC3(&csr_bus_ops, CSR_BUS_INFO_SIZE, h);
	if (!h->csr.rom)
		goto fail;

	h->hostdata = h + 1;
	h->driver = drv;

	FUNC1(&h->pending_packets);
	FUNC1(&h->addr_space);

	for (i = 2; i < 16; i++)
		h->csr.gen_timestamp[i] = jiffies - 60 * HZ;

	FUNC2(&h->generation, 0);

	FUNC0(&h->delayed_reset, delayed_reset_bus);
	
	FUNC9(&h->timeout);
	h->timeout.data = (unsigned long) h;
	h->timeout.function = abort_timedouts;
	h->timeout_interval = HZ / 20; /* 50ms, half of minimum SPLIT_TIMEOUT */

	h->topology_map = h->csr.topology_map + 3;
	h->speed_map = (u8 *)(h->csr.speed_map + 2);

	FUNC13(&host_num_alloc);
	while (FUNC15(&hostnum, alloc_hostnum_cb))
		hostnum++;
	FUNC14(&host_num_alloc);
	h->id = hostnum;

	FUNC12(&h->device, &nodemgr_dev_template_host, sizeof(h->device));
	h->device.parent = dev;
	FUNC16(&h->device, FUNC5(dev));
	FUNC4(&h->device, "fw-host%d", h->id);

	h->host_dev.parent = &h->device;
	h->host_dev.class = &hpsb_host_class;
	FUNC4(&h->host_dev, "fw-host%d", h->id);

	if (FUNC6(&h->device))
		goto fail;
	if (FUNC6(&h->host_dev)) {
		FUNC7(&h->device);
		goto fail;
	}
	FUNC8(&h->device);

	return h;

fail:
	FUNC10(h);
	return NULL;
}