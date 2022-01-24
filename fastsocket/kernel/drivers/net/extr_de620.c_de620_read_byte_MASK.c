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
struct net_device {int dummy; } ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 

__attribute__((used)) static inline byte
FUNC2(struct net_device *dev)
{
	byte value;

	/* The de620_ready() makes 7 loops, on the average, on a DX2/66 */
	value = FUNC1(dev); /* High nibble */
	FUNC0(dev);
	value |= FUNC1(dev) >> 4; /* Low nibble */
	return value;
}