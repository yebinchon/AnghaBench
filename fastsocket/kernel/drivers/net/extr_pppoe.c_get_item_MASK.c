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
struct pppox_sock {int dummy; } ;
struct pppoe_net {int /*<<< orphan*/  hash_lock; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct pppox_sock* FUNC0 (struct pppoe_net*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pppox_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct pppox_sock *FUNC5(struct pppoe_net *pn, __be16 sid,
					unsigned char *addr, int ifindex)
{
	struct pppox_sock *po;

	FUNC1(&pn->hash_lock);
	po = FUNC0(pn, sid, addr, ifindex);
	if (po)
		FUNC4(FUNC3(po));
	FUNC2(&pn->hash_lock);

	return po;
}