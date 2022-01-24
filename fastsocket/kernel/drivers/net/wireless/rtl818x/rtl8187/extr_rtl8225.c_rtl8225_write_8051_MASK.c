#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct rtl8187_priv {TYPE_2__* map; int /*<<< orphan*/  io_mutex; TYPE_1__* io_dmabuf; int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  RFPinsSelect; int /*<<< orphan*/  RFPinsOutput; int /*<<< orphan*/  RFPinsEnable; } ;
struct TYPE_3__ {int /*<<< orphan*/  bits16; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  RTL8187_REQT_WRITE ; 
 int /*<<< orphan*/  RTL8187_REQ_SET_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rtl8187_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8187_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *dev, u8 addr, __le16 data)
{
	struct rtl8187_priv *priv = dev->priv;
	u16 reg80, reg82, reg84;

	reg80 = FUNC2(priv, &priv->map->RFPinsOutput);
	reg82 = FUNC2(priv, &priv->map->RFPinsEnable);
	reg84 = FUNC2(priv, &priv->map->RFPinsSelect);

	reg80 &= ~(0x3 << 2);
	reg84 &= ~0xF;

	FUNC3(priv, &priv->map->RFPinsEnable, reg82 | 0x0007);
	FUNC3(priv, &priv->map->RFPinsSelect, reg84 | 0x0007);
	FUNC4(10);

	FUNC3(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
	FUNC4(2);

	FUNC3(priv, &priv->map->RFPinsOutput, reg80);
	FUNC4(10);

	FUNC0(&priv->io_mutex);

	priv->io_dmabuf->bits16 = data;
	FUNC5(priv->udev, FUNC6(priv->udev, 0),
			RTL8187_REQ_SET_REG, RTL8187_REQT_WRITE,
			addr, 0x8225, &priv->io_dmabuf->bits16, sizeof(data),
			HZ / 2);

	FUNC1(&priv->io_mutex);

	FUNC3(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
	FUNC4(10);

	FUNC3(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
	FUNC3(priv, &priv->map->RFPinsSelect, reg84);
}