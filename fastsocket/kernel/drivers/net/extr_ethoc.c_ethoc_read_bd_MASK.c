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
struct ethoc_bd {void* addr; void* stat; } ;
struct ethoc {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ ETHOC_BD_BASE ; 
 void* FUNC0 (struct ethoc*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct ethoc *dev, int index,
		struct ethoc_bd *bd)
{
	loff_t offset = ETHOC_BD_BASE + (index * sizeof(struct ethoc_bd));
	bd->stat = FUNC0(dev, offset + 0);
	bd->addr = FUNC0(dev, offset + 4);
}