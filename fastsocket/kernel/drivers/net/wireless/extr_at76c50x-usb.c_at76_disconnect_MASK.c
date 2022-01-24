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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct at76_priv {TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct at76_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct at76_priv* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *interface)
{
	struct at76_priv *priv;

	priv = FUNC2(interface);
	FUNC3(interface, NULL);

	/* Disconnect after loading internal firmware */
	if (!priv)
		return;

	FUNC4(priv->hw->wiphy, "disconnecting\n");
	FUNC0(priv);
	FUNC1(KERN_INFO, &interface->dev, "disconnected\n");
}