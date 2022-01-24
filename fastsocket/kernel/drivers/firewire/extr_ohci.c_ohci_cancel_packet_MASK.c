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
struct fw_packet {int /*<<< orphan*/  ack; int /*<<< orphan*/  (* callback ) (struct fw_packet*,TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  header; int /*<<< orphan*/  speed; int /*<<< orphan*/  payload_length; int /*<<< orphan*/  payload_bus; struct driver_data* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct context {int /*<<< orphan*/  tasklet; } ;
struct fw_ohci {TYPE_1__ card; struct context at_request_ctx; } ;
struct fw_card {int dummy; } ;
struct driver_data {int /*<<< orphan*/ * packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOENT ; 
 int /*<<< orphan*/  RCODE_CANCELLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fw_ohci* FUNC1 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_packet*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fw_card *card, struct fw_packet *packet)
{
	struct fw_ohci *ohci = FUNC1(card);
	struct context *ctx = &ohci->at_request_ctx;
	struct driver_data *driver_data = packet->driver_data;
	int ret = -ENOENT;

	FUNC4(&ctx->tasklet);

	if (packet->ack != 0)
		goto out;

	if (packet->payload_bus)
		FUNC0(ohci->card.device, packet->payload_bus,
				 packet->payload_length, DMA_TO_DEVICE);

	FUNC2('T', packet->speed, packet->header, 0x20);
	driver_data->packet = NULL;
	packet->ack = RCODE_CANCELLED;
	packet->callback(packet, &ohci->card, packet->ack);
	ret = 0;
 out:
	FUNC5(&ctx->tasklet);

	return ret;
}