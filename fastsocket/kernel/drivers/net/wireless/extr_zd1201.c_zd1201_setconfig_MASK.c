#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zd1201 {TYPE_1__* usb; int /*<<< orphan*/ * rxdata; scalar_t__ rxlen; scalar_t__ rxdatas; int /*<<< orphan*/  rxdataq; int /*<<< orphan*/  endp_out2; } ;
struct urb {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int ZD1201_ACCESSBIT ; 
 int ZD1201_CMDCODE_ACCESS ; 
 int /*<<< orphan*/  ZD1201_USB_CMDREQ ; 
 unsigned char ZD1201_USB_RESREQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 struct urb* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,TYPE_1__*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ,struct zd1201*) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  zd1201_usbfree ; 

__attribute__((used)) static int FUNC14(struct zd1201 *zd, int rid, void *buf, int len, int wait)
{
	int err;
	unsigned char *request;
	int reqlen;
	char seq=0;
	struct urb *urb;
	gfp_t gfp_mask = wait ? GFP_NOIO : GFP_ATOMIC;

	len += 4;			/* first 4 are for header */

	zd->rxdatas = 0;
	zd->rxlen = 0;
	for (seq=0; len > 0; seq++) {
		request = FUNC4(16, gfp_mask);
		if (!request)
			return -ENOMEM;
		urb = FUNC8(0, gfp_mask);
		if (!urb) {
			FUNC3(request);
			return -ENOMEM;
		}
		FUNC7(request, 0, 16);
		reqlen = len>12 ? 12 : len;
		request[0] = ZD1201_USB_RESREQ;
		request[1] = seq;
		request[2] = 0;
		request[3] = 0;
		if (request[1] == 0) {
			/* add header */
			*(__le16*)&request[4] = FUNC0((len-2+1)/2);
			*(__le16*)&request[6] = FUNC0(rid);
			FUNC6(request+8, buf, reqlen-4);
			buf += reqlen-4;
		} else {
			FUNC6(request+4, buf, reqlen);
			buf += reqlen;
		}

		len -= reqlen;

		FUNC9(urb, zd->usb, FUNC11(zd->usb,
		    zd->endp_out2), request, 16, zd1201_usbfree, zd);
		err = FUNC12(urb, gfp_mask);
		if (err)
			goto err;
	}

	request = FUNC4(16, gfp_mask);
	if (!request)
		return -ENOMEM;
	urb = FUNC8(0, gfp_mask);
	if (!urb) {
		FUNC3(request);
		return -ENOMEM;
	}
	*((__le32*)request) = FUNC1(ZD1201_USB_CMDREQ);
	*((__le16*)&request[4]) = 
	    FUNC0(ZD1201_CMDCODE_ACCESS|ZD1201_ACCESSBIT);
	*((__le16*)&request[6]) = FUNC0(rid);
	*((__le16*)&request[8]) = FUNC0(0);
	*((__le16*)&request[10]) = FUNC0(0);
	FUNC9(urb, zd->usb, FUNC11(zd->usb, zd->endp_out2),
	     request, 16, zd1201_usbfree, zd);
	err = FUNC12(urb, gfp_mask);
	if (err)
		goto err;
	
	if (wait) {
		FUNC13(zd->rxdataq, zd->rxdatas);
		if (!zd->rxlen || FUNC5(*(__le16*)&zd->rxdata[6]) != rid) {
			FUNC2(&zd->usb->dev, "wrong or no RID received\n");
		}
	}

	return 0;
err:
	FUNC3(request);
	FUNC10(urb);
	return err;
}