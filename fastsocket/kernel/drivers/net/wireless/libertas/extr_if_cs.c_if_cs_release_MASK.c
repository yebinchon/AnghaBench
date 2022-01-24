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
struct TYPE_2__ {int /*<<< orphan*/  AssignedIRQ; } ;
struct pcmcia_device {TYPE_1__ irq; struct if_cs_card* priv; } ;
struct if_cs_card {scalar_t__ iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct if_cs_card*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC5(struct pcmcia_device *p_dev)
{
	struct if_cs_card *card = p_dev->priv;

	FUNC2(LBS_DEB_CS);

	FUNC0(p_dev->irq.AssignedIRQ, card);
	FUNC4(p_dev);
	if (card->iobase)
		FUNC1(card->iobase);

	FUNC3(LBS_DEB_CS);
}