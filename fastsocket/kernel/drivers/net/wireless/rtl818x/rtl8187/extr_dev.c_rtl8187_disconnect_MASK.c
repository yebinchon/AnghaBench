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
struct rtl8187_priv {int /*<<< orphan*/  io_dmabuf; int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct ieee80211_hw *dev = FUNC6(intf);
	struct rtl8187_priv *priv;

	if (!dev)
		return;

#ifdef CONFIG_RTL8187_LEDS
	rtl8187_leds_exit(dev);
#endif
	FUNC5(dev);
	FUNC1(dev);

	priv = dev->priv;
	FUNC8(priv->udev);
	FUNC7(FUNC2(intf));
	FUNC3(priv->io_dmabuf);
	FUNC0(dev);
}