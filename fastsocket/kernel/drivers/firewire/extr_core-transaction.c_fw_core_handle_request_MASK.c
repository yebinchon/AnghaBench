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
struct fw_request {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct fw_packet {scalar_t__ ack; unsigned long long* header; int /*<<< orphan*/  speed; int /*<<< orphan*/  generation; } ;
struct fw_card {int dummy; } ;
struct fw_address_handler {int /*<<< orphan*/  callback_data; int /*<<< orphan*/  (* address_callback ) (struct fw_card*,struct fw_request*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ ACK_COMPLETE ; 
 scalar_t__ ACK_PENDING ; 
 int FUNC0 (unsigned long long) ; 
 scalar_t__ FUNC1 (unsigned long long) ; 
 int FUNC2 (unsigned long long) ; 
 int FUNC3 (unsigned long long) ; 
 int /*<<< orphan*/  RCODE_ADDRESS_ERROR ; 
 int /*<<< orphan*/  address_handler_list ; 
 int /*<<< orphan*/  address_handler_lock ; 
 struct fw_request* FUNC4 (struct fw_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_card*,struct fw_request*,int /*<<< orphan*/ ) ; 
 struct fw_address_handler* FUNC6 (int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_card*,struct fw_request*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct fw_card *card, struct fw_packet *p)
{
	struct fw_address_handler *handler;
	struct fw_request *request;
	unsigned long long offset;
	unsigned long flags;
	int tcode, destination, source;

	if (p->ack != ACK_PENDING && p->ack != ACK_COMPLETE)
		return;

	request = FUNC4(p);
	if (request == NULL) {
		/* FIXME: send statically allocated busy packet. */
		return;
	}

	offset      =
		((unsigned long long)
		 FUNC1(p->header[1]) << 32) | p->header[2];
	tcode       = FUNC3(p->header[0]);
	destination = FUNC0(p->header[0]);
	source      = FUNC2(p->header[1]);

	FUNC7(&address_handler_lock, flags);
	handler = FUNC6(&address_handler_list,
						   offset, request->length);
	FUNC8(&address_handler_lock, flags);

	/*
	 * FIXME: lookup the fw_node corresponding to the sender of
	 * this request and pass that to the address handler instead
	 * of the node ID.  We may also want to move the address
	 * allocations to fw_node so we only do this callback if the
	 * upper layers registered it for this node.
	 */

	if (handler == NULL)
		FUNC5(card, request, RCODE_ADDRESS_ERROR);
	else
		handler->address_callback(card, request,
					  tcode, destination, source,
					  p->generation, p->speed, offset,
					  request->data, request->length,
					  handler->callback_data);
}