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
struct zd1201 {int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  endp_in; int /*<<< orphan*/  usb; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ZD1201_CMDCODE_ALLOC ; 
 int /*<<< orphan*/  ZD1201_CMDCODE_INIT ; 
 int /*<<< orphan*/  ZD1201_RID_CNFMAXTXBUFFERNUMBER ; 
 int /*<<< orphan*/  ZD1201_RXSIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 short FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zd1201*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct zd1201*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct zd1201*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zd1201_usbrx ; 

__attribute__((used)) static int FUNC9(struct zd1201 *zd)
{
	int err, i;
	short max;
	__le16 zdmax;
	unsigned char *buffer;

	buffer = FUNC1(ZD1201_RXSIZE, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	FUNC3(zd->rx_urb, zd->usb, 
	    FUNC5(zd->usb, zd->endp_in), buffer, ZD1201_RXSIZE,
	    zd1201_usbrx, zd);

	err = FUNC6(zd->rx_urb, GFP_KERNEL);
	if (err)
		goto err_buffer;

	err = FUNC7(zd, ZD1201_CMDCODE_INIT, 0, 0, 0);
	if (err)
		goto err_urb;

	err = FUNC8(zd, ZD1201_RID_CNFMAXTXBUFFERNUMBER, &zdmax,
	    sizeof(__le16));
	if (err)
		goto err_urb;

	max = FUNC2(zdmax);
	for (i=0; i<max; i++) {
		err = FUNC7(zd, ZD1201_CMDCODE_ALLOC, 1514, 0, 0);
		if (err)
			goto err_urb;
	}

	return 0;

err_urb:
	FUNC4(zd->rx_urb);
	return err;
err_buffer:
	FUNC0(buffer);
	return err;
}