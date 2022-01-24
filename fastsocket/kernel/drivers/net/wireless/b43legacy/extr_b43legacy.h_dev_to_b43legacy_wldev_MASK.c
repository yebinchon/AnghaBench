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
struct ssb_device {int dummy; } ;
struct device {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 struct ssb_device* FUNC0 (struct device*) ; 
 struct b43legacy_wldev* FUNC1 (struct ssb_device*) ; 

__attribute__((used)) static inline
struct b43legacy_wldev *FUNC2(struct device *dev)
{
	struct ssb_device *ssb_dev = FUNC0(dev);
	return FUNC1(ssb_dev);
}