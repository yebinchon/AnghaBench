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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  drop_lock ; 
 int drop_max ; 
 struct sk_buff* drop_skb ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(int max)
{
	struct sk_buff *new;
	unsigned long flags;
	int err = 0;

	FUNC3(&drop_lock, flags);

	if (max <= drop_max)
		goto out;

	err = -ENOMEM;
	new = FUNC0(max);
	if (new == NULL)
		goto out;

	FUNC2(new, max);

	FUNC1(drop_skb);
	drop_skb = new;
	drop_max = max;
	err = 0;
out:
	FUNC4(&drop_lock, flags);

	return err;
}