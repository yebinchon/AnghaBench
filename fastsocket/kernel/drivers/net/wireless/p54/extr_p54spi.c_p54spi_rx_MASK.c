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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct p54s_priv {int /*<<< orphan*/  hw; TYPE_1__* spi; } ;
typedef  int /*<<< orphan*/  rx_head ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 scalar_t__ READAHEAD_SZ ; 
 int /*<<< orphan*/  SPI_ADRS_DMA_DATA ; 
 struct sk_buff* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct p54s_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct p54s_priv*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct p54s_priv*) ; 
 scalar_t__* FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct p54s_priv *priv)
{
	struct sk_buff *skb;
	u16 len;
	u16 rx_head[2];
#define READAHEAD_SZ (sizeof(rx_head)-sizeof(u16))

	if (FUNC7(priv) < 0)
		return -EBUSY;

	/* Read data size and first data word in one SPI transaction
	 * This is workaround for firmware/DMA bug,
	 * when first data word gets lost under high load.
	 */
	FUNC6(priv, SPI_ADRS_DMA_DATA, rx_head, sizeof(rx_head));
	len = rx_head[0];

	if (len == 0) {
		FUNC5(priv);
		FUNC1(&priv->spi->dev, "rx request of zero bytes\n");
		return 0;
	}

	/* Firmware may insert up to 4 padding bytes after the lmac header,
	 * but it does not amend the size of SPI data transfer.
	 * Such packets has correct data size in header, thus referencing
	 * past the end of allocated skb. Reserve extra 4 bytes for this case */
	skb = FUNC0(len + 4);
	if (!skb) {
		FUNC5(priv);
		FUNC1(&priv->spi->dev, "could not alloc skb");
		return -ENOMEM;
	}

	if (len <= READAHEAD_SZ) {
		FUNC3(FUNC8(skb, len), rx_head + 1, len);
	} else {
		FUNC3(FUNC8(skb, READAHEAD_SZ), rx_head + 1, READAHEAD_SZ);
		FUNC6(priv, SPI_ADRS_DMA_DATA,
				FUNC8(skb, len - READAHEAD_SZ),
				len - READAHEAD_SZ);
	}
	FUNC5(priv);
	/* Put additional bytes to compensate for the possible
	 * alignment-caused truncation */
	FUNC8(skb, 4);

	if (FUNC4(priv->hw, skb) == 0)
		FUNC2(skb);

	return 0;
}