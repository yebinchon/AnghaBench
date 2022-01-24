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
typedef  int u16 ;
struct usbnet {int /*<<< orphan*/  xid; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; scalar_t__ head; } ;
struct nc_trailer {int /*<<< orphan*/  packet_id; } ;
struct nc_header {void* packet_id; void* packet_len; void* hdr_len; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAD_BYTE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,char*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *
FUNC12(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
	struct sk_buff		*skb2;
	struct nc_header	*header = NULL;
	struct nc_trailer	*trailer = NULL;
	int			padlen = sizeof (struct nc_trailer);
	int			len = skb->len;

	if (!((len + padlen + sizeof (struct nc_header)) & 0x01))
		padlen++;
	if (!FUNC5(skb)) {
		int	headroom = FUNC7(skb);
		int	tailroom = FUNC11(skb);

		if (padlen <= tailroom &&
		    sizeof(struct nc_header) <= headroom)
			/* There's enough head and tail room */
			goto encapsulate;

		if ((sizeof (struct nc_header) + padlen) <
				(headroom + tailroom)) {
			/* There's enough total room, so just readjust */
			skb->data = FUNC3(skb->head
						+ sizeof (struct nc_header),
					    skb->data, skb->len);
			FUNC10(skb, len);
			goto encapsulate;
		}
	}

	/* Create a new skb to use with the correct size */
	skb2 = FUNC6(skb,
				sizeof (struct nc_header),
				padlen,
				flags);
	FUNC1(skb);
	if (!skb2)
		return skb2;
	skb = skb2;

encapsulate:
	/* header first */
	header = (struct nc_header *) FUNC8(skb, sizeof *header);
	header->hdr_len = FUNC0(sizeof (*header));
	header->packet_len = FUNC0(len);
	header->packet_id = FUNC0((u16)dev->xid++);

	/* maybe pad; then trailer */
	if (!((skb->len + sizeof *trailer) & 0x01))
		*FUNC9(skb, 1) = PAD_BYTE;
	trailer = (struct nc_trailer *) FUNC9(skb, sizeof *trailer);
	FUNC4(header->packet_id, &trailer->packet_id);
#if 0
	devdbg(dev, "frame >tx h %d p %d id %d",
		header->hdr_len, header->packet_len,
		header->packet_id);
#endif
	return skb;
}