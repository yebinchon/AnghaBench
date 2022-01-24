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
typedef  int /*<<< orphan*/  u32 ;
struct tg3 {int /*<<< orphan*/  last_event_jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRC_RX_CPU_DRIVER_EVENT ; 
 int /*<<< orphan*/  GRC_RX_CPU_EVENT ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct tg3 *tp)
{
	u32 val;

	val = FUNC0(GRC_RX_CPU_EVENT);
	val |= GRC_RX_CPU_DRIVER_EVENT;
	FUNC1(GRC_RX_CPU_EVENT, val);

	tp->last_event_jiffies = jiffies;
}