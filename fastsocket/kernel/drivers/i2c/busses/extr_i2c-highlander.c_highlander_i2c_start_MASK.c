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
struct highlander_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SMCR ; 
 int SMCR_START ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct highlander_i2c_dev *dev)
{
	FUNC1(FUNC0(dev->base + SMCR) | SMCR_START, dev->base + SMCR);
}