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
typedef  int u8 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, u8 c)
{
	const char esc_c0[2] = { 0xdb, 0xdc };
	const char esc_db[2] = { 0xdb, 0xdd };

	switch (c) {
	case 0xc0:
		FUNC0(FUNC1(skb, 2), &esc_c0, 2);
		break;
	case 0xdb:
		FUNC0(FUNC1(skb, 2), &esc_db, 2);
		break;
	default:
		FUNC0(FUNC1(skb, 1), &c, 1);
	}
}