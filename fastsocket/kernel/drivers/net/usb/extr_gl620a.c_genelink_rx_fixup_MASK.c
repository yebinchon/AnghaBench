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
typedef  int u32 ;
struct usbnet {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct gl_packet {int /*<<< orphan*/ * packet_data; int /*<<< orphan*/  packet_length; } ;
struct gl_header {struct gl_packet packets; int /*<<< orphan*/  packet_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int GL_MAX_PACKET_LEN ; 
 int GL_MAX_TRANSMIT_PACKETS ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct usbnet *dev, struct sk_buff *skb)
{
	struct gl_header	*header;
	struct gl_packet	*packet;
	struct sk_buff		*gl_skb;
	u32			size;
	u32			count;

	header = (struct gl_header *) skb->data;

	// get the packet count of the received skb
	count = FUNC2(header->packet_count);
	if (count > GL_MAX_TRANSMIT_PACKETS) {
		FUNC1("genelink: invalid received packet count %u", count);
		return 0;
	}

	// set the current packet pointer to the first packet
	packet = &header->packets;

	// decrement the length for the packet count size 4 bytes
	FUNC4(skb, 4);

	while (count > 1) {
		// get the packet length
		size = FUNC2(packet->packet_length);

		// this may be a broken packet
		if (size > GL_MAX_PACKET_LEN) {
			FUNC1("genelink: invalid rx length %d", size);
			return 0;
		}

		// allocate the skb for the individual packet
		gl_skb = FUNC0(size, GFP_ATOMIC);
		if (gl_skb) {

			// copy the packet data to the new skb
			FUNC3(FUNC5(gl_skb, size),
					packet->packet_data, size);
			FUNC6(dev, gl_skb);
		}

		// advance to the next packet
		packet = (struct gl_packet *)&packet->packet_data[size];
		count--;

		// shift the data pointer to the next gl_packet
		FUNC4(skb, size + 4);
	}

	// skip the packet length field 4 bytes
	FUNC4(skb, 4);

	if (skb->len > GL_MAX_PACKET_LEN) {
		FUNC1("genelink: invalid rx length %d", skb->len);
		return 0;
	}
	return 1;
}