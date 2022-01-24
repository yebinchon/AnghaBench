#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* card; int /*<<< orphan*/  ncci_head; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_6__ {int nr_controllers; int /*<<< orphan*/  lock; TYPE_1__* ctrlinfo; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

avmcard *FUNC4(int nr_controllers)
{
	avmcard *card;
	avmctrl_info *cinfo;
	int i;

	card = FUNC2(sizeof(*card), GFP_KERNEL);
	if (!card)
		return NULL;

	cinfo = FUNC2(sizeof(*cinfo) * nr_controllers, GFP_KERNEL);
	if (!cinfo) {
		FUNC1(card);
		return NULL;
	}

	card->ctrlinfo = cinfo;
	for (i = 0; i < nr_controllers; i++) {
		FUNC0(&cinfo[i].ncci_head);
		cinfo[i].card = card;
	}
	FUNC3(&card->lock);
	card->nr_controllers = nr_controllers;

	return card;
}