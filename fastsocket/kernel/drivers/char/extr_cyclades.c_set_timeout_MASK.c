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
struct cyclades_port {struct cyclades_card* card; } ;
struct cyclades_card {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CyRTPR ; 
 int /*<<< orphan*/  FUNC0 (struct cyclades_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct cyclades_port*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct cyclades_port *info, unsigned long value)
{
	struct cyclades_card *card = info->card;
	unsigned long flags;

	if (!FUNC0(card)) {
		FUNC2(&card->card_lock, flags);
		FUNC1(info, CyRTPR, value & 0xff);
		FUNC3(&card->card_lock, flags);
	}
	return 0;
}