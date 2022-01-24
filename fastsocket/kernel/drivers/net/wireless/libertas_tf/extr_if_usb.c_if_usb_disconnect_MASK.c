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
struct usb_interface {int dummy; } ;
struct lbtf_private {int dummy; } ;
struct if_usb_card {struct lbtf_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBTF_DEB_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lbtf_private*) ; 
 struct if_usb_card* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct if_usb_card *cardp = FUNC6(intf);
	struct lbtf_private *priv = cardp->priv;

	FUNC3(LBTF_DEB_MAIN);

	FUNC1(cardp);

	if (priv)
		FUNC5(priv);

	/* Unlink and free urb */
	FUNC0(cardp);

	FUNC8(intf, NULL);
	FUNC7(FUNC2(intf));

	FUNC4(LBTF_DEB_MAIN);
}