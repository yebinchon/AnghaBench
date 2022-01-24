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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int /*<<< orphan*/ * h8300_ne_base ; 
 size_t h8300_ne_count ; 
 int /*<<< orphan*/ * h8300_ne_irq ; 

__attribute__((used)) static inline int FUNC1(struct net_device *dev)
{
	if (h8300_ne_count < FUNC0(h8300_ne_base)) {
		dev->base_addr = h8300_ne_base[h8300_ne_count];
		dev->irq       = h8300_ne_irq[h8300_ne_count];
		h8300_ne_count++;
		return 0;
	} else
		return -ENODEV;
}