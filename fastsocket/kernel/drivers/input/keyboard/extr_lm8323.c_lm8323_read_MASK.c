#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct lm8323_chip {TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct lm8323_chip *lm, u8 cmd, u8 *buf, int len)
{
	int ret;

	/*
	 * If the host is asleep while we send the byte, we can get a NACK
	 * back while it wakes up, so try again, once.
	 */
	ret = FUNC2(lm->client, &cmd, 1);
	if (FUNC3(ret == -EREMOTEIO))
		ret = FUNC2(lm->client, &cmd, 1);
	if (FUNC3(ret != 1)) {
		FUNC0(&lm->client->dev, "sending read cmd 0x%02x failed\n",
			cmd);
		return 0;
	}

	ret = FUNC1(lm->client, buf, len);
	if (FUNC3(ret != len))
		FUNC0(&lm->client->dev, "wanted %d bytes, got %d\n",
			len, ret);

	return ret;
}