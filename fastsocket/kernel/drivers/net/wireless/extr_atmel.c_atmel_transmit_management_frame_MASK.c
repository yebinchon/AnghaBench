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
typedef  scalar_t__ u16 ;
struct ieee80211_hdr {int* addr1; } ;
struct atmel_private {int tx_buff_tail; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MGMT_FRAME_BODY_OFFSET ; 
 int /*<<< orphan*/  TX_PACKET_TYPE_MGMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (struct atmel_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_private*,int,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct atmel_private *priv,
					    struct ieee80211_hdr *header,
					    u8 *body, int body_len)
{
	u16 buff;
	int len = MGMT_FRAME_BODY_OFFSET + body_len;

	if (!(buff = FUNC1(priv, len)))
		return;

	FUNC0(priv->dev, buff, (u8 *)header, MGMT_FRAME_BODY_OFFSET);
	FUNC0(priv->dev, buff + MGMT_FRAME_BODY_OFFSET, body, body_len);
	priv->tx_buff_tail += len;
	FUNC2(priv, header->addr1[0] & 0x01, len, buff, TX_PACKET_TYPE_MGMT);
}