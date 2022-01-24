#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ mbase; } ;
typedef  TYPE_1__ avmcard ;

/* Variables and functions */
 unsigned long DBELL_ADDR ; 
 unsigned long DBELL_DATA ; 
 scalar_t__ DOORBELL ; 
 int HZ ; 
 scalar_t__ MBOX_PEEK_POKE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(avmcard *card,  unsigned long off, unsigned long value)
{

	if (FUNC1(card, HZ/10) < 0)
		return -1;
	
	FUNC0(card->mbase+MBOX_PEEK_POKE, off);
	FUNC0(card->mbase+DOORBELL, DBELL_ADDR);

	if (FUNC1(card, HZ/10) < 0)
		return -1;

	FUNC0(card->mbase+MBOX_PEEK_POKE, value);
	FUNC0(card->mbase+DOORBELL, DBELL_DATA | DBELL_ADDR);

	return 0;
}