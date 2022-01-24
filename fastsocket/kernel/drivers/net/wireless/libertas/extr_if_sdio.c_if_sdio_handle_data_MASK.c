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
struct sk_buff {int dummy; } ;
struct if_sdio_card {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
 unsigned int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ; 
 unsigned int NET_IP_ALIGN ; 
 struct sk_buff* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,unsigned int) ; 
 char* FUNC6 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct if_sdio_card *card,
		u8 *buffer, unsigned size)
{
	int ret;
	struct sk_buff *skb;
	char *data;

	FUNC1(LBS_DEB_SDIO);

	if (size > MRVDRV_ETH_RX_PACKET_BUFFER_SIZE) {
		FUNC3("response packet too large (%d bytes)\n",
			(int)size);
		ret = -E2BIG;
		goto out;
	}

	skb = FUNC0(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE + NET_IP_ALIGN);
	if (!skb) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC7(skb, NET_IP_ALIGN);

	data = FUNC6(skb, size);

	FUNC5(data, buffer, size);

	FUNC4(card->priv, skb);

	ret = 0;

out:
	FUNC2(LBS_DEB_SDIO, "ret %d", ret);

	return ret;
}