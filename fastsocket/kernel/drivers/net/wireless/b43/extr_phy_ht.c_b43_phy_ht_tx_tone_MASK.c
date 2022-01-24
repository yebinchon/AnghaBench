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
typedef  int /*<<< orphan*/  u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev)
{
	u16 samp;

	samp = FUNC0(dev);
	FUNC1(dev, samp, 0xFFFF, 0);
}