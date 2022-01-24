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
struct TYPE_3__ {unsigned short msgnum; int /*<<< orphan*/  mnlock; } ;
typedef  TYPE_1__ act2000_card ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline unsigned short
FUNC2(act2000_card *card)
{
	unsigned long flags;
	unsigned short n;

	FUNC0(&card->mnlock, flags);
	n = card->msgnum;
	card->msgnum++;
	card->msgnum &= 0x7fff;
	FUNC1(&card->mnlock, flags);
	return n;
}