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
 unsigned int SBIC_ASR ; 
 scalar_t__ SBIC_REGIDX ; 
 scalar_t__ SBIC_REGVAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(AS_Host *host, unsigned int reg)
{
    if(reg == SBIC_ASR)
	   return FUNC0(host->base + SBIC_REGIDX) & 255;
    FUNC1(reg, host->base + SBIC_REGIDX);
    return FUNC0(host->base + SBIC_REGVAL) & 255;
}