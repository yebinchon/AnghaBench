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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  W_DUMMY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline byte
FUNC2(struct net_device *dev, byte reg)
{
	byte value;

	FUNC1(dev,reg);
	value = FUNC0(dev);
	FUNC1(dev,W_DUMMY);

	return value;
}