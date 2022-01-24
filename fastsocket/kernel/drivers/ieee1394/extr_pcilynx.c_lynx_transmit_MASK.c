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
struct lynx_send_data {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  pcl_queue; int /*<<< orphan*/  queue; } ;
struct ti_lynx {int /*<<< orphan*/  id; struct lynx_send_data iso_send; struct lynx_send_data async; } ;
struct hpsb_packet {int data_size; int type; scalar_t__ tcode; int /*<<< orphan*/  driver_list; int /*<<< orphan*/ * header; } ;
struct hpsb_host {struct ti_lynx* hostdata; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ TCODE_READQ_RESPONSE ; 
 scalar_t__ TCODE_WRITEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  hpsb_async 130 
#define  hpsb_iso 129 
#define  hpsb_raw 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_lynx*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct hpsb_host *host, struct hpsb_packet *packet)
{
        struct ti_lynx *lynx = host->hostdata;
        struct lynx_send_data *d;
        unsigned long flags;

        if (packet->data_size >= 4096) {
                FUNC0(KERN_ERR, lynx->id, "transmit packet data too big (%Zd)",
                      packet->data_size);
                return -EOVERFLOW;
        }

        switch (packet->type) {
        case hpsb_async:
        case hpsb_raw:
                d = &lynx->async;
                break;
#if 0 /* has been removed from ieee1394 core */
        case hpsb_iso:
                d = &lynx->iso_send;
                break;
#endif
        default:
                FUNC0(KERN_ERR, lynx->id, "invalid packet type %d",
                      packet->type);
                return -EINVAL;
        }

        if (packet->tcode == TCODE_WRITEQ
            || packet->tcode == TCODE_READQ_RESPONSE) {
                FUNC1(&packet->header[3]);
        }

        FUNC5(&d->queue_lock, flags);

	FUNC2(&packet->driver_list, &d->queue);
	if (FUNC3(&d->pcl_queue))
                FUNC4(lynx, packet->type);

        FUNC6(&d->queue_lock, flags);

        return 0;
}