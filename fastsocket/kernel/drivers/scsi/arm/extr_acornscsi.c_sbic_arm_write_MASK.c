#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ base; } ;
typedef  TYPE_1__ AS_Host ;

/* Variables and functions */
 scalar_t__ SBIC_REGIDX ; 
 scalar_t__ SBIC_REGVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(AS_Host *host, unsigned int reg, unsigned int value)
{
    FUNC0(reg, host->base + SBIC_REGIDX);
    FUNC0(value, host->base + SBIC_REGVAL);
}