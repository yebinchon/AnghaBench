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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct pegasus {int /*<<< orphan*/  net; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  carrier_check; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PEGASUS_UNPLUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pegasus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pegasus*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pegasus*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct pegasus* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct usb_interface *intf)
{
	struct pegasus *pegasus = FUNC10(intf);

	FUNC12(intf, NULL);
	if (!pegasus) {
		FUNC1(&intf->dev, "unregistering non-bound device?\n");
		return;
	}

	pegasus->flags |= PEGASUS_UNPLUG;
	FUNC0(&pegasus->carrier_check);
	FUNC9(pegasus->net);
	FUNC11(FUNC6(intf));
	FUNC8(pegasus);
	FUNC3(pegasus);
	FUNC5(pegasus);
	if (pegasus->rx_skb != NULL) {
		FUNC2(pegasus->rx_skb);
		pegasus->rx_skb = NULL;
	}
	FUNC4(pegasus->net);
	FUNC7();
}