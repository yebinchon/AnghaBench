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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int cmask; } ;

/* Variables and functions */
 int MISDN_TIME_STAMP ; 
 int /*<<< orphan*/  SOL_MISDN ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,int /*<<< orphan*/ ,int,int,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct timeval*) ; 

__attribute__((used)) static inline void
FUNC3(struct sock *sk, struct msghdr *msg, struct sk_buff *skb)
{
	struct timeval	tv;

	if (FUNC0(sk)->cmask & MISDN_TIME_STAMP) {
		FUNC2(skb, &tv);
		FUNC1(msg, SOL_MISDN, MISDN_TIME_STAMP, sizeof(tv), &tv);
	}
}