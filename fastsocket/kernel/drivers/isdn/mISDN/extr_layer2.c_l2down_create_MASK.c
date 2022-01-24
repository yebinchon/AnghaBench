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
typedef  void* u_int ;
struct sk_buff {int dummy; } ;
struct mISDNhead {void* id; void* prim; } ;
struct layer2 {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct layer2*,struct sk_buff*) ; 
 struct mISDNhead* FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC6(struct layer2 *l2, u_int prim, u_int id, int len, void *arg)
{
	struct sk_buff	*skb;
	int		err;
	struct mISDNhead *hh;

	skb = FUNC3(len, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;
	hh = FUNC2(skb);
	hh->prim = prim;
	hh->id = id;
	if (len)
		FUNC4(FUNC5(skb, len), arg, len);
	err = FUNC1(l2, skb);
	if (err)
		FUNC0(skb);
	return err;
}