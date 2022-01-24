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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct idt77252_dev {TYPE_1__* sbpool; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** skb; } ;

/* Variables and functions */
 int FBQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct idt77252_dev *card, struct sk_buff *skb)
{
	unsigned int queue, index;
	u32 handle;

	handle = FUNC0(skb);

	queue = FUNC2(handle);
	if (queue > 3)
		return;

	index = FUNC1(handle);
	if (index > FBQ_SIZE - 1)
		return;

	card->sbpool[queue].skb[index] = NULL;
}