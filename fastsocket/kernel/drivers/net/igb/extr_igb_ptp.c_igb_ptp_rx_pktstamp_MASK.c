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
struct igb_q_vector {int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

void FUNC3(struct igb_q_vector *q_vector,
			 unsigned char *va,
			 struct sk_buff *skb)
{
	__le64 *regval = (__le64 *)va;

	/* The timestamp is recorded in little endian format.
	 * DWORD: 0        1        2        3
	 * Field: Reserved Reserved SYSTIML  SYSTIMH
	 */
	FUNC0(q_vector->adapter, FUNC2(skb),
				   FUNC1(regval[1]));
}