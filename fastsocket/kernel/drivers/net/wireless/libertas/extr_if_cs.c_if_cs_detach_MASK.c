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
struct pcmcia_device {struct if_cs_card* priv; } ;
struct if_cs_card {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_CS ; 
 int /*<<< orphan*/  FUNC0 (struct if_cs_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_cs_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pcmcia_device *p_dev)
{
	struct if_cs_card *card = p_dev->priv;

	FUNC3(LBS_DEB_CS);

	FUNC6(card->priv);
	FUNC5(card->priv);
	FUNC0(card);
	FUNC1(p_dev);
	FUNC2(card);

	FUNC4(LBS_DEB_CS);
}