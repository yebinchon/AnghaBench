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
struct dma_trm_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_list; } ;
struct ti_ohci {scalar_t__ max_packet_size; struct dma_trm_ctx at_req_context; struct dma_trm_ctx at_resp_context; } ;
struct hpsb_packet {scalar_t__ data_size; scalar_t__ type; int tcode; int /*<<< orphan*/  driver_list; } ;
struct hpsb_host {struct ti_ohci* hostdata; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int TCODE_ISO_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct ti_ohci*,struct dma_trm_ctx*) ; 
 scalar_t__ hpsb_raw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct hpsb_host *host, struct hpsb_packet *packet)
{
	struct ti_ohci *ohci = host->hostdata;
	struct dma_trm_ctx *d;
	unsigned long flags;

	if (packet->data_size > ohci->max_packet_size) {
		FUNC0(KERN_ERR,
		      "Transmit packet size %Zd is too big",
		      packet->data_size);
		return -EOVERFLOW;
	}

	if (packet->type == hpsb_raw)
		d = &ohci->at_req_context;
	else if ((packet->tcode & 0x02) && (packet->tcode != TCODE_ISO_DATA))
		d = &ohci->at_resp_context;
	else
		d = &ohci->at_req_context;

	FUNC3(&d->lock,flags);

	FUNC2(&packet->driver_list, &d->pending_list);

	FUNC1(ohci, d);

	FUNC4(&d->lock,flags);

	return 0;
}