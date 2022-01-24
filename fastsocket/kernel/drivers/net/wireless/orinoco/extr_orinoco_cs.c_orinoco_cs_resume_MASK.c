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
struct pcmcia_device {struct orinoco_private* priv; } ;
struct orinoco_private {struct orinoco_pccard* card; } ;
struct orinoco_pccard {int /*<<< orphan*/  hard_reset_in_progress; } ;

/* Variables and functions */
 int FUNC0 (struct orinoco_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct pcmcia_device *link)
{
	struct orinoco_private *priv = link->priv;
	struct orinoco_pccard *card = priv->card;
	int err = 0;

	if (!FUNC1(0, &card->hard_reset_in_progress))
		err = FUNC0(priv);

	return err;
}