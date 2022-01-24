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
struct solos_card {TYPE_2__** atmdev; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int link_rate; int /*<<< orphan*/  signal; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_PHY_SIG_FOUND ; 
 int /*<<< orphan*/  ATM_PHY_SIG_LOST ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (char*,char**,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(struct solos_card *card, int port, struct sk_buff *skb)
{
	char *str, *end, *state_str, *snr, *attn;
	int ver, rate_up, rate_down;

	if (!card->atmdev[port])
		return -ENODEV;

	str = FUNC3(skb);
	if (!str)
		return -EIO;

	ver = FUNC5(str, NULL, 10);
	if (ver < 1) {
		FUNC2(&card->dev->dev, "Unexpected status interrupt version %d\n",
			 ver);
		return -EIO;
	}

	str = FUNC3(skb);
	if (!str)
		return -EIO;
	if (!FUNC6(str, "ERROR")) {
		FUNC0(&card->dev->dev, "Status packet indicated Solos error on port %d (starting up?)\n",
			 port);
		return 0;
	}

	rate_down = FUNC5(str, &end, 10);
	if (*end)
		return -EIO;

	str = FUNC3(skb);
	if (!str)
		return -EIO;
	rate_up = FUNC5(str, &end, 10);
	if (*end)
		return -EIO;

	state_str = FUNC3(skb);
	if (!state_str)
		return -EIO;

	/* Anything but 'Showtime' is down */
	if (FUNC6(state_str, "Showtime")) {
		card->atmdev[port]->signal = ATM_PHY_SIG_LOST;
		FUNC4(card->atmdev[port]);
		FUNC1(&card->dev->dev, "Port %d: %s\n", port, state_str);
		return 0;
	}

	snr = FUNC3(skb);
	if (!snr)
		return -EIO;
	attn = FUNC3(skb);
	if (!attn)
		return -EIO;

	FUNC1(&card->dev->dev, "Port %d: %s @%d/%d kb/s%s%s%s%s\n",
		 port, state_str, rate_down/1000, rate_up/1000,
		 snr[0]?", SNR ":"", snr, attn[0]?", Attn ":"", attn);
	
	card->atmdev[port]->link_rate = rate_down / 424;
	card->atmdev[port]->signal = ATM_PHY_SIG_FOUND;

	return 0;
}