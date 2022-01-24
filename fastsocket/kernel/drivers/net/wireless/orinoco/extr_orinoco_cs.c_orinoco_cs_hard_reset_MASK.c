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
struct pcmcia_device {int /*<<< orphan*/  socket; } ;
struct orinoco_private {struct orinoco_pccard* card; } ;
struct orinoco_pccard {int /*<<< orphan*/  hard_reset_in_progress; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct orinoco_private *priv)
{
	struct orinoco_pccard *card = priv->card;
	struct pcmcia_device *link = card->p_dev;
	int err;

	/* We need atomic ops here, because we're not holding the lock */
	FUNC3(0, &card->hard_reset_in_progress);

	err = FUNC2(link->socket);
	if (err)
		return err;

	FUNC1(100);
	FUNC0(0, &card->hard_reset_in_progress);

	return 0;
}