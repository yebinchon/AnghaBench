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
typedef  int u16 ;
struct lbs_private {scalar_t__ card; } ;
struct if_cs_card {int dummy; } ;

/* Variables and functions */
 int IF_CS_BIT_COMMAND ; 
 int /*<<< orphan*/  IF_CS_CARD_STATUS ; 
 int /*<<< orphan*/  IF_CS_CMD ; 
 int /*<<< orphan*/  IF_CS_CMD_LEN ; 
 int /*<<< orphan*/  IF_CS_HOST_INT_CAUSE ; 
 int /*<<< orphan*/  IF_CS_HOST_STATUS ; 
 int /*<<< orphan*/  LBS_DEB_CS ; 
 int /*<<< orphan*/  FUNC0 (struct if_cs_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct if_cs_card*) ; 
 int FUNC2 (struct if_cs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct if_cs_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct if_cs_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct if_cs_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct lbs_private *priv, u8 *buf, u16 nb)
{
	struct if_cs_card *card = (struct if_cs_card *)priv->card;
	int ret = -1;
	int loops = 0;

	FUNC6(LBS_DEB_CS);
	FUNC0(card);

	/* Is hardware ready? */
	while (1) {
		u16 status = FUNC2(card, IF_CS_CARD_STATUS);
		if (status & IF_CS_BIT_COMMAND)
			break;
		if (++loops > 100) {
			FUNC8("card not ready for commands\n");
			goto done;
		}
		FUNC9(1);
	}

	FUNC3(card, IF_CS_CMD_LEN, nb);

	FUNC4(card, IF_CS_CMD, buf, nb / 2);
	/* Are we supposed to transfer an odd amount of bytes? */
	if (nb & 1)
		FUNC5(card, IF_CS_CMD, buf[nb-1]);

	/* "Assert the download over interrupt command in the Host
	 * status register" */
	FUNC3(card, IF_CS_HOST_STATUS, IF_CS_BIT_COMMAND);

	/* "Assert the download over interrupt command in the Card
	 * interrupt case register" */
	FUNC3(card, IF_CS_HOST_INT_CAUSE, IF_CS_BIT_COMMAND);
	ret = 0;

done:
	FUNC1(card);
	FUNC7(LBS_DEB_CS, "ret %d", ret);
	return ret;
}