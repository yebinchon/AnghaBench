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
typedef  int u32 ;
struct TYPE_3__ {scalar_t__ plx; } ;
typedef  TYPE_1__ card_t ;

/* Variables and functions */
 scalar_t__ PLX_CONTROL ; 
 int PLX_CTL_RESET ; 
 scalar_t__ PLX_MAILBOX_0 ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(card_t *card)
{
	u32 old_value = FUNC0(card->plx + PLX_CONTROL) & ~PLX_CTL_RESET;

	FUNC2(0x80, card->plx + PLX_MAILBOX_0);
	FUNC2(old_value | PLX_CTL_RESET, card->plx + PLX_CONTROL);
	FUNC0(card->plx + PLX_CONTROL); /* wait for posted write */
	FUNC1(1);
	FUNC2(old_value, card->plx + PLX_CONTROL);
	FUNC0(card->plx + PLX_CONTROL); /* wait for posted write */
}