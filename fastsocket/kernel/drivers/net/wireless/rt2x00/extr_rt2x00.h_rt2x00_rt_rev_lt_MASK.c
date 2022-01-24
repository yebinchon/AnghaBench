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
typedef  scalar_t__ u16 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ const FUNC0 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*,scalar_t__ const) ; 

__attribute__((used)) static inline bool FUNC2(struct rt2x00_dev *rt2x00dev,
				    const u16 rt, const u16 rev)
{
	return (FUNC1(rt2x00dev, rt) && FUNC0(rt2x00dev) < rev);
}