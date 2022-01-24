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
struct hpsb_iso {int /*<<< orphan*/  flags; } ;
struct hpsb_host {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ (* isoctl ) (struct hpsb_iso*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HPSB_ISO_DRIVER_INIT ; 
 int /*<<< orphan*/  HPSB_ISO_RECV ; 
 int /*<<< orphan*/  RECV_INIT ; 
 struct hpsb_iso* FUNC0 (struct hpsb_host*,int /*<<< orphan*/ ,unsigned int,unsigned int,int,int,int,void (*) (struct hpsb_iso*)) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_iso*) ; 
 scalar_t__ FUNC2 (struct hpsb_iso*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct hpsb_iso *FUNC3(struct hpsb_host *host,
				    unsigned int data_buf_size,
				    unsigned int buf_packets,
				    int channel,
				    int dma_mode,
				    int irq_interval,
				    void (*callback) (struct hpsb_iso *))
{
	struct hpsb_iso *iso = FUNC0(host, HPSB_ISO_RECV,
						    data_buf_size, buf_packets,
						    channel, dma_mode,
						    irq_interval, callback);
	if (!iso)
		return NULL;

	/* tell the driver to start working */
	if (host->driver->isoctl(iso, RECV_INIT, 0))
		goto err;

	iso->flags |= HPSB_ISO_DRIVER_INIT;
	return iso;

      err:
	FUNC1(iso);
	return NULL;
}