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
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPU_R10000 ; 
 scalar_t__ CPU_R12000 ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 

__attribute__((used)) static inline int FUNC2(struct device *dev)
{
	return !FUNC1(dev) &&
	       (FUNC0() == CPU_R10000 ||
	       FUNC0() == CPU_R12000);
}