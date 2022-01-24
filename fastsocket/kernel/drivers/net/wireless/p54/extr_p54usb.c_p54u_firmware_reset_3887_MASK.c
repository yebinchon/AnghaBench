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
typedef  int /*<<< orphan*/  u8 ;
struct p54u_priv {TYPE_1__* udev; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P54U_PIPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct p54u_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  p54u_romboot_3887 ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *dev)
{
	struct p54u_priv *priv = dev->priv;
	u8 *buf;
	int ret;

	buf = FUNC2(p54u_romboot_3887, 4, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	ret = FUNC3(priv, P54U_PIPE_DATA,
			    buf, 4);
	FUNC1(buf);
	if (ret)
		FUNC0(&priv->udev->dev, "(p54usb) unable to jump to "
			"boot ROM (%d)!\n", ret);

	return ret;
}