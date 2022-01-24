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
struct b43legacy_dmaring {int dummy; } ;
struct b43legacy_dmadesc_meta {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
void FUNC2(struct b43legacy_dmaring *ring,
			    struct b43legacy_dmadesc_meta *meta,
			    int irq_context)
{
	if (meta->skb) {
		if (irq_context)
			FUNC1(meta->skb);
		else
			FUNC0(meta->skb);
		meta->skb = NULL;
	}
}