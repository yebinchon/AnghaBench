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
typedef  int u_char ;
struct sk_buff {int dummy; } ;
struct layer2 {int /*<<< orphan*/  ui_queue; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FLG_LAPD_NET ; 
 int MAX_L2HEADER_LEN ; 
 int UI ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (struct layer2*,int*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct layer2 *l2)
{
	struct sk_buff *skb;
	u_char header[MAX_L2HEADER_LEN];
	int i;

	i = FUNC2(l2, header, CMD);
	if (FUNC5(FLG_LAPD_NET, &l2->flag))
		header[1] = 0xff; /* tei 127 */
	header[i++] = UI;
	while ((skb = FUNC3(&l2->ui_queue))) {
		FUNC1(FUNC4(skb, i), header, i);
		FUNC0(l2, skb);
	}
}