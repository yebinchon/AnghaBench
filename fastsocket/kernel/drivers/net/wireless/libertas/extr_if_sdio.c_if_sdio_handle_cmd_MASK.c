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
typedef  size_t u8 ;
struct lbs_private {scalar_t__ resp_idx; unsigned int* resp_len; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/ * resp_buf; } ;
struct if_sdio_card {struct lbs_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int E2BIG ; 
 unsigned int LBS_CMD_BUFFER_SIZE ; 
 int /*<<< orphan*/  LBS_DEB_SDIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct if_sdio_card *card,
		u8 *buffer, unsigned size)
{
	struct lbs_private *priv = card->priv;
	int ret;
	unsigned long flags;
	u8 i;

	FUNC1(LBS_DEB_SDIO);

	if (size > LBS_CMD_BUFFER_SIZE) {
		FUNC3("response packet too large (%d bytes)\n",
			(int)size);
		ret = -E2BIG;
		goto out;
	}

	FUNC6(&priv->driver_lock, flags);

	i = (priv->resp_idx == 0) ? 1 : 0;
	FUNC0(priv->resp_len[i]);
	priv->resp_len[i] = size;
	FUNC5(priv->resp_buf[i], buffer, size);
	FUNC4(priv, i);

	FUNC7(&card->priv->driver_lock, flags);

	ret = 0;

out:
	FUNC2(LBS_DEB_SDIO, "ret %d", ret);
	return ret;
}