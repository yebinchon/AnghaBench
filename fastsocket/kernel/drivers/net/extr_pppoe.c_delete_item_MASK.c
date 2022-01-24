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
 struct pppox_sock* FUNC0 (struct pppoe_net*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct pppox_sock *FUNC3(struct pppoe_net *pn, __be16 sid,
					char *addr, int ifindex)
{
	struct pppox_sock *ret;

	FUNC1(&pn->hash_lock);
	ret = FUNC0(pn, sid, addr, ifindex);
	FUNC2(&pn->hash_lock);

	return ret;
}