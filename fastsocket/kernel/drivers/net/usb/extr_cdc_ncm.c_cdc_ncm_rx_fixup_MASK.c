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
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {scalar_t__* data; } ;
struct usb_cdc_ncm_ndp16 {int /*<<< orphan*/  wNextNdpIndex; struct usb_cdc_ncm_dpe16* dpe16; int /*<<< orphan*/  dwSignature; } ;
struct usb_cdc_ncm_dpe16 {int /*<<< orphan*/  wDatagramLength; int /*<<< orphan*/  wDatagramIndex; } ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct cdc_ncm_ctx {int rx_max; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ USB_CDC_NCM_NDP16_NOCRC_SIGN ; 
 int FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct cdc_ncm_ctx*,struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct usbnet *dev, struct sk_buff *skb_in)
{
	struct sk_buff *skb;
	struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
	int len;
	int nframes;
	int x;
	int offset;
	struct usb_cdc_ncm_ndp16 *ndp16;
	struct usb_cdc_ncm_dpe16 *dpe16;
	int ndpoffset;
	int loopcount = 50; /* arbitrary max preventing infinite loop */

	ndpoffset = FUNC1(ctx, skb_in);
	if (ndpoffset < 0)
		goto error;

next_ndp:
	nframes = FUNC0(skb_in, ndpoffset);
	if (nframes < 0)
		goto error;

	ndp16 = (struct usb_cdc_ncm_ndp16 *)(skb_in->data + ndpoffset);

	if (FUNC3(ndp16->dwSignature) != USB_CDC_NCM_NDP16_NOCRC_SIGN) {
		FUNC4("invalid DPT16 signature <%u>\n",
			 FUNC3(ndp16->dwSignature));
		goto err_ndp;
	}
	dpe16 = ndp16->dpe16;

	for (x = 0; x < nframes; x++, dpe16++) {
		offset = FUNC2(dpe16->wDatagramIndex);
		len = FUNC2(dpe16->wDatagramLength);

		/*
		 * CDC NCM ch. 3.7
		 * All entries after first NULL entry are to be ignored
		 */
		if ((offset == 0) || (len == 0)) {
			if (!x)
				goto err_ndp; /* empty NTB */
			break;
		}

		/* sanity checking */
		if (((offset + len) > skb_in->len) ||
				(len > ctx->rx_max) || (len < ETH_HLEN)) {
			FUNC4("invalid frame detected (ignored)"
					"offset[%u]=%u, length=%u, skb=%p\n",
					x, offset, len, skb_in);
			if (!x)
				goto err_ndp;
			break;

		} else {
			skb = FUNC5(skb_in, GFP_ATOMIC);
			if (!skb)
				goto error;
			skb->len = len;
			skb->data = ((u8 *)skb_in->data) + offset;
			FUNC6(skb, len);
			FUNC7(dev, skb);
		}
	}
err_ndp:
	/* are there more NDPs to process? */
	ndpoffset = FUNC2(ndp16->wNextNdpIndex);
	if (ndpoffset && loopcount--)
		goto next_ndp;

	return 1;
error:
	return 0;
}