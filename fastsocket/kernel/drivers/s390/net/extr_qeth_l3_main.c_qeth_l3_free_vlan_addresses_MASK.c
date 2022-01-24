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
struct qeth_card {int /*<<< orphan*/  vlangrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,unsigned short) ; 

__attribute__((used)) static void FUNC2(struct qeth_card *card,
			unsigned short vid)
{
	if (!card->vlangrp)
		return;
	FUNC0(card, vid);
	FUNC1(card, vid);
}